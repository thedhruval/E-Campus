<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar col-lg-12 col-12 px-0 py-0 py-lg-4 d-flex flex-row">
    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
        </button>
        <div class="navbar-brand-wrapper d-flex align-items-center">
            <!-- Main Logo -->
            <a class="navbar-brand brand-logo" href="index.jsp">
                <img src="../images/logo.png" alt="logo" class="img-fluid" style="max-height:150px;" />
            </a>
            <!-- Mini Logo for smaller screens -->
            <a class="navbar-brand brand-logo-mini d-lg-none" href="index.jsp">
                <img src="../images/logo-mini.svg" alt="logo-mini" class="img-fluid" style="max-height:120px;" />
            </a>
        </div>
        <h4 class="font-weight-bold mb-0 d-none d-md-block mt-1">
            Welcome back, ${sessionScope.user.firstName} ${sessionScope.user.lastName}
        </h4>
        <ul class="navbar-nav navbar-nav-right">
            
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
        </button>
    </div>

    <div class="navbar-menu-wrapper navbar-search-wrapper d-none d-lg-flex align-items-center">
        
        <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
                    <c:if test="${not empty sessionScope.user.profilePicURL}">
                        <img src="${sessionScope.user.profilePicURL}" alt="profile" class="img-xs rounded-circle" />
                    </c:if>
                    <c:if test="${empty sessionScope.user.profilePicURL}">
                        <img src="../images/faces/dummy1.png" alt="profile" class="img-xs rounded-circle" />
                    </c:if>
                    <span class="nav-profile-name">${sessionScope.user.firstName} ${sessionScope.user.lastName}</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                    <a class="dropdown-item" href="/logout">
                        <i class="mdi mdi-logout text-primary"></i> Logout
                    </a>
                </div>
            </li>
        </ul>
    </div>
</nav>
