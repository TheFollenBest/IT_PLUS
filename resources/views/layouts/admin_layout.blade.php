<!DOCTYPE html>
<html lang="ru">

<head>
{{--    <meta charset="utf-8">--}}
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Админ-панель - @yield('title')</title>
    <link rel="icon" href="/img/logo.ico">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/admin/plugins/fontawesome-free-6.1.1-web/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="/admin/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="/admin/plugins/daterangepicker/daterangepicker.css">
    <!-- codemirror -->
    <script src="/codemirror/lib/codemirror.js"></script>
    <script src="/codemirror/mode/xml/xml.js"></script>
    <script src="/codemirror/mode/css/css.js"></script>
    <script src="/codemirror/mode/javascript/javascript.js"></script>
    <script src="/codemirror/addon/edit/closetag.js"></script>
    <script src="/codemirror/addon/edit/closebrackets.js"></script>
    <link rel="stylesheet" href="/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="/codemirror/theme/dracula.css">

    @stack('style')

</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <!-- Navigation panel -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">

            <!-- Logo -->
            <a href="{{ route('index') }}" class="brand-link">
                <span class="brand-text font-weight-light pl-3 ">IT PLUS</span>
            </a>
            <a href="{{ route('homeAdmin') }}" class="brand-link">
                <span class="brand-text font-weight-light pl-3 ">Админ-панель</span>
            </a>


            <!-- Navigation menu -->
            <div class="sidebar">
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                        <li class="nav-header">КУРСЫ</li>
                        <li class="nav-item">
                            <a href="{{ route('courses.index') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-laptop-code"></i>
                                <p>Список курсов</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('courses.create') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-plus"></i>
                                <p>Добавление курса</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('questions.index') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-question"></i>
                                <p>Список вопросов</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('questions.create') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-plus"></i>
                                <p>Добавление вопроса</p>
                            </a>
                        </li>

                        <li class="nav-header">УРОКИ</li>
                        <li class="nav-item">
                            <a href="{{ route('lessons.index') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-book"></i>
                                <p>Список уроков</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('lessons.create') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-plus"></i>
                                <p>Добавление урока</p>
                            </a>
                        </li>
                        <li class="nav-header">ПОЛЬЗОВАТЕЛИ</li>
                        <li class="nav-item">
                            <a href="{{ route('users.index') }}" class="nav-link">
                                <i class="nav-icon fa-solid fa-users"></i>
                                <p>Список пользователей</p>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="/admin/plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)

    </script>
    <!-- Bootstrap 4 -->
    <script src="/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="/admin/plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="/admin/plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="/admin/plugins/moment/moment.min.js"></script>
    <script src="/admin/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/admin/dist/js/adminlte.js"></script>
    <script>
        $(function () {
            bsCustomFileInput.init();
        });
    </script>

    @stack('script')

</body>

</html>
