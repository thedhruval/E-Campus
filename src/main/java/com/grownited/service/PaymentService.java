package com.grownited.service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.EnrollmentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.EnrollmentRepository;

import jakarta.servlet.http.HttpSession;
import net.authorize.Environment;
import net.authorize.api.contract.v1.*;
import net.authorize.api.controller.CreateTransactionController;
import net.authorize.api.controller.base.ApiOperationBase;

@Service
public class PaymentService {

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    private static String apiLoginId = "63xNws2TKv";
    private static String transactionKey = "7U5x647RWdvy9Ax6";

    public ANetApiResponse run(Integer courseId, Double amount,
                               String creditCardNumber, String expirationDate,
                               HttpSession session) {

        UserEntity loggedInUser = (UserEntity) session.getAttribute("user");
        Integer userId = loggedInUser.getUserId();
        String email = loggedInUser.getEmail();

        // Set environment
        ApiOperationBase.setEnvironment(Environment.SANDBOX);

        // Merchant authentication
        MerchantAuthenticationType merchantAuthenticationType = new MerchantAuthenticationType();
        merchantAuthenticationType.setName(apiLoginId);
        merchantAuthenticationType.setTransactionKey(transactionKey);

        // Payment data
        CreditCardType creditCard = new CreditCardType();
        creditCard.setCardNumber(creditCardNumber);
        creditCard.setExpirationDate(expirationDate);

        PaymentType paymentType = new PaymentType();
        paymentType.setCreditCard(creditCard);

        // Customer data
        CustomerDataType customer = new CustomerDataType();
        customer.setEmail(email);

        // Transaction request
        TransactionRequestType txnRequest = new TransactionRequestType();
        txnRequest.setTransactionType(TransactionTypeEnum.AUTH_CAPTURE_TRANSACTION.value());
        txnRequest.setPayment(paymentType);
        txnRequest.setCustomer(customer);
        txnRequest.setAmount(new BigDecimal(amount).setScale(2, RoundingMode.CEILING));

        // API request
        CreateTransactionRequest apiRequest = new CreateTransactionRequest();
        apiRequest.setMerchantAuthentication(merchantAuthenticationType);
        apiRequest.setTransactionRequest(txnRequest);

        // Execute
        CreateTransactionController controller = new CreateTransactionController(apiRequest);
        controller.execute();

        CreateTransactionResponse response = controller.getApiResponse();

        // Parse response
        if (response != null) {
            if (response.getMessages().getResultCode() == MessageTypeEnum.OK) {
                TransactionResponse result = response.getTransactionResponse();
                if (result.getMessages() != null) {
                    System.out.println("Successfully created transaction with Transaction ID: " + result.getTransId());
                    System.out.println("Response Code: " + result.getResponseCode());
                    System.out.println("Message Code: " + result.getMessages().getMessage().get(0).getCode());
                    System.out.println("Description: " + result.getMessages().getMessage().get(0).getDescription());
                    System.out.println("Auth Code: " + result.getAuthCode());

                    // Save enrollment
                    EnrollmentEntity enrollmentEntity = new EnrollmentEntity();
                    enrollmentEntity.setAmount(amount.floatValue());
                    enrollmentEntity.setCourseId(courseId);
                    enrollmentEntity.setUserId(userId);
                    enrollmentEntity.setTransactionId(result.getTransId());
                    enrollmentEntity.setAuthCode(result.getAuthCode());
                    enrollmentEntity.setEmail(email);
                    enrollmentEntity.setDate(LocalDate.now());

                    enrollmentRepository.save(enrollmentEntity);

                } else {
                    System.out.println("Failed Transaction: No messages.");
                    if (response.getTransactionResponse().getErrors() != null) {
                        System.out.println("Error Code: " +
                                response.getTransactionResponse().getErrors().getError().get(0).getErrorCode());
                        System.out.println("Error message: " +
                                response.getTransactionResponse().getErrors().getError().get(0).getErrorText());
                    }
                }
            } else {
                System.out.println("Failed Transaction.");
                if (response.getTransactionResponse() != null &&
                    response.getTransactionResponse().getErrors() != null) {
                    System.out.println("Error Code: " +
                            response.getTransactionResponse().getErrors().getError().get(0).getErrorCode());
                    System.out.println("Error message: " +
                            response.getTransactionResponse().getErrors().getError().get(0).getErrorText());
                } else {
                    System.out.println("Error Code: " + response.getMessages().getMessage().get(0).getCode());
                    System.out.println("Error message: " + response.getMessages().getMessage().get(0).getText());
                }
            }
        } else {
            // Response is null
            ANetApiResponse errorResponse = controller.getErrorResponse();
            System.out.println("Failed to get response");
            if (errorResponse != null && !errorResponse.getMessages().getMessage().isEmpty()) {
                System.out.println("Error: " +
                        errorResponse.getMessages().getMessage().get(0).getCode() + " \n" +
                        errorResponse.getMessages().getMessage().get(0).getText());
            }
        }

        return response;
    }
}
