<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lesson-1</title>
    <link rel="icon" href="/img/logo.ico">
{{--    <link rel="stylesheet" href="/css/style.css">--}}
    <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">

    <!-- codemirror -->
    <link rel="stylesheet" href="/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="/codemirror/theme/dracula.css">
    <link rel="stylesheet" href="/css/trainer.build.css">
    <link rel="stylesheet" href="/css/vendor.build.css">
    <script src="/codemirror/lib/codemirror.js"></script>
    <script src="/codemirror/mode/xml/xml.js"></script>
    <script src="/codemirror/mode/css/css.js"></script>
    <script src="/codemirror/mode/javascript/javascript.js"></script>
    <script src="/codemirror/addon/edit/closetag.js"></script>
    <script src="/codemirror/addon/edit/closebrackets.js"></script>
</head>

<body id="bundle-trainer" class="utilityfocus" style="--profession-color:#007AFF; --darken-profession-color:rgba(0, 109, 229, 1); --initial-vh:9.29px;">
    <div id="mount">
        <div class="app">
            <div class="page trainer-page">
                <div class="page__content">
                    <div class="onboarding" style="--gradient-secondary-color:rgba(0, 122, 255, 0.1);">
                        <div class="onboarding__content">
                            <section class="trainer">
                                <aside class="trainer-navigation">
                                    <section class="trainer-navigation__content">
                                        <span class="element-hint trainer-navigation__top">
                                            <span class="element-hint__wrapper">
                                                <a href="{{ route('index') }}" class="trainer-navigation__top-button">
                                                    <svg class="icon icon-backward" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <path d="M7.414 12l4.564 4.427a.981.981 0 01-1.366 1.41L4.586 12l6.027-5.77a.98.98 0 111.355 1.416L7.414 12z" fill="currentColor"></path>
                                                        <rect x="7" y="11.074" width="12" height="1.926" rx=".963" fill="currentColor"></rect>
                                                    </svg>
                                                </a>
                                            </span>
                                        </span>
                                        <div class="trainer-navigation__middle">
                                            <span class="element-hint trainer-navigation__hint">
                                                <span class="element-hint__wrapper">
                                                    <svg class="icon icon-list trainer-navigation__program-icon" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <rect x="5" y="14" width="14" height="2" rx="1" fill="currentColor"></rect>
                                                        <rect x="5" y="8" width="14" height="2" rx="1" fill="currentColor"></rect>
                                                    </svg>
                                                </span>
                                            </span>
                                        </div>
                                    </section>
                                </aside>
                                <section class="trainer__lesson trainer__lesson_type_web">
                                    <div class="split-view split-view_direction_row trainer__body">
                                        <div class="split-view__pane" style="flex-grow: 1">
                                            <div class="split-view split-view_direction_column trainer__left-column">
                                                <div class="split-view__pane" style="flex-grow: 1.5">
                                                    <div class="split-view  split-view_direction_row trainer-editor__wrapper">
                                                        <div class="split-view__pane" style="flex-grow: 2;">
                                                            <section class="tabs tabs-default folder trainer-editor__tabs">
                                                                <section class="tabs__header  trainer__panel_at_top">
                                                                    <section class="slider__content slider-default__content">
                                                                        <section class="tabs-group tabs-group-default tabs-group-pane">
                                                                            <button onclick="openTab(event, 'HTML')" id="defaultOpen" class="tab button tablinks tab-pane tabs-group__item tabs__item" style="width: 950px;"><span class="element-hint tab__element-hint"><span class="element-hint__wrapper"></span></span>
                                                                                <article class="tab__text">HTML</article>
                                                                            </button>
                                                                            <button onclick="openTab(event, 'CSS')" class="tab button tablinks tab-pane tabs-group__item tabs__item" style="width: 950px;"><span class="element-hint tab__element-hint"><span class="element-hint__wrapper"></span></span>
                                                                                <article class="tab__text">CSS</article>
                                                                            </button>
                                                                            <button onclick="openTab(event, 'JS')" class="tab button tablinks tab-pane tabs-group__item tabs__item" style="width: 950px;"><span class="element-hint tab__element-hint"><span class="element-hint__wrapper"></span></span>
                                                                                <article class="tab__text">JS</article>
                                                                            </button>
                                                                        </section>
                                                                    </section>
                                                                </section>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div id="HTML" class="tabcontent">
                                                        <div id="editor-html" name="editor_html" class="editor-html"></div>
                                                    </div>
                                                    <div id="CSS" class="tabcontent">
                                                        <div id="editor-css" name="editor_css" class="editor-css"></div>
                                                    </div>
                                                    <div id="JS" class="tabcontent">
                                                        <div id="editor-js" name="editor_js" class="editor-js"></div>
                                                    </div>
                                                </div>
                                                <div class="split-view__pane" style="flex-grow: 1.5;">
                                                    <section class="trainer-tasks trainer-tasks_type_web trainer-tasks trainer-tasks_type_web trainer__tasks">
                                                        <section class="trainer-tasks-panel trainer-tasks-panel_type_web trainer__panel trainer__panel_at_bottom">
                                                            <div class="trainer-tasks-panel__title">
                                                                <span>Урок 1: Начало</span>
                                                                <span></span>
                                                            </div>
                                                        </section>
                                                        <div class="task-description">
                                                            <div class="scrollable-default scrollable scrollable_theme_light task-description__content prisma prisma_theme_light">
                                                                <div class="Markdown base-markdown base-markdown_with-gallery base-markdown markdown markdown_size_small markdown_type_theory theory-viewer__markdown task-description__markdown">
                                                                    <div class="paragraph">Текст</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <section class="trainer-footer trainer-footer_type_web trainer__panel trainer__panel_at_bottom trainer-footer">
                                                            <div class="trainer-footer__actions">
                                                                <button class="button2 button2_flat button2_size_s button2_type_link hint-button trainer-footer__hint-button">
                                                                    <svg class="icon icon-helpoutline hint-button__icon" width="24" height="24" viewBox="0 0 24 24">
                                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M21 12a9 9 0 01-9 9 9 9 0 01-9-9 9 9 0 019-9 9 9 0 019 9zm-1.8 0a7.2 7.2 0 11-14.4 0 7.2 7.2 0 0114.4 0zm-8.325 3.819c0-.651.495-1.119 1.119-1.119.637 0 1.131.468 1.131 1.119 0 .65-.495 1.131-1.131 1.131a1.103 1.103 0 01-1.119-1.131zm1.328-8.769c-1.942 0-3.398 1.119-3.398 2.925v.023a.45.45 0 00.45.45h.723a.392.392 0 00.391-.392c0-1.01.781-1.55 1.834-1.55 1.024 0 1.698.54 1.698 1.308 0 .728-.378 1.065-1.321 1.497l-.27.12c-.795.351-1.092.877-1.092 1.794v.125a.45.45 0 00.45.45h.664a.45.45 0 00.45-.45v-.03c0-.406.108-.568.432-.715l.27-.122c1.131-.513 1.981-1.186 1.981-2.656v-.08c0-1.551-1.348-2.697-3.262-2.697z" fill="currentColor"></path>
                                                                    </svg>
                                                                    <span>Теория</span>
                                                                </button>
                                                                <div class="trainer-footer__splitter"></div>
                                                                <span class="element-hint trainer-footer__reset-code-button trainer-footer__button">
                                                                    <span class="element-hint__wrapper">
                                                                        <button class="button button_size_m button_type_icon button_theme_light button_view_clear button_has-hover-color button_with-scaling-background" type="button" style="--button-hover-color:var(--profession-color, $pureBlue);">
                                                                            <span class="button__text">
                                                                                <svg class="icon icon-refresh" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                                    <path d="M12 5.75c0 .414-.338.745-.748.8a5.501 5.501 0 106.198 6.198c.055-.41.386-.748.8-.748.414 0 .754.337.71.749a7.001 7.001 0 11-7.709-7.71c.412-.043.749.297.749.711z" fill="currentColor"></path>
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M15.267 5.2a1 1 0 010 1.6l-2.667 2A1 1 0 0111 8V4a1 1 0 011.6-.8l2.667 2z" fill="currentColor"></path>
                                                                                </svg>
                                                                            </span>
                                                                        </button>
                                                                    </span>
                                                                </span>
                                                                <span class="element-hint trainer-footer__previous-task-button trainer-footer__button">
                                                                    <span class="element-hint__wrapper">
                                                                        <button class="button button_size_m button_type_icon button_theme_light button_view_clear button_has-hover-color button_with-scaling-background" type="button" style="--button-hover-color:var(--profession-color, $pureBlue);">
                                                                            <span class="button__text"><svg class="icon icon-backward" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                                    <path d="M7.414 12l4.564 4.427a.981.981 0 01-1.366 1.41L4.586 12l6.027-5.77a.98.98 0 111.355 1.416L7.414 12z" fill="currentColor"></path>
                                                                                    <rect x="7" y="11.074" width="12" height="1.926" rx=".963" fill="currentColor"></rect>
                                                                                </svg>
                                                                            </span>
                                                                        </button>
                                                                    </span>
                                                                </span>
                                                                <section class="trainer-footer__action-buttons trainer-footer__action-buttons_type_web">
                                                                    <button class="button2 button2_flat button2_size_m button2_type_primary trainer-footer__check-button trainer-footer__action-button"><span>Проверить</span></button>
                                                                </section>
                                                            </div>
                                                        </section>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="split-view__pane split-view__pane_animating" style="flex-grow: 1">
                                            <div class="trainer__right-column">
                                                <div class="web-result-view">
                                                    <div class="web-result-view__outer-wrapper">
                                                        <div class="web-result-view__wrapper">
                                                            <div class="web-result-view__inner-wrapper">
                                                                <div class="web-result-view__container">
                                                                    <section class="trainer-result trainer-result_type_web">
                                                                        <iframe class="trainer-result__content" id="output"></iframe>
                                                                    </section>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

{{--<style>--}}

{{--    /* Style the tab */--}}
{{--    .tab {--}}
{{--        overflow: hidden;--}}
{{--        border: 1px solid #ccc;--}}
{{--        background-color: #f1f1f1;--}}
{{--    }--}}

{{--    /* Style the buttons inside the tab */--}}
{{--    .tab button {--}}
{{--        background-color: inherit;--}}
{{--        float: left;--}}
{{--        border: none;--}}
{{--        outline: none;--}}
{{--        cursor: pointer;--}}
{{--        padding: 14px 16px;--}}
{{--        transition: 0.3s;--}}
{{--        font-size: 17px;--}}
{{--    }--}}

{{--    /* Change background color of buttons on hover */--}}
{{--    .tab button:hover {--}}
{{--        background-color: #ddd;--}}
{{--    }--}}

{{--    /* Create an active/current tablink class */--}}
{{--    .tab button.active {--}}
{{--        background-color: #ccc;--}}
{{--    }--}}

{{--    /* Style the tab content */--}}
{{--    .tabcontent {--}}
{{--        display: none;--}}
{{--        padding: 6px 12px;--}}
{{--        border: 1px solid #ccc;--}}
{{--        border-top: none;--}}
{{--    }--}}
{{--</style>--}}

<script>
    function openTab(evt, editorName) {
        let i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" tab_active", "");
        }
        document.getElementById(editorName).style.display = "block";
        evt.currentTarget.className += " tab_active";
    }
    document.getElementById("defaultOpen").click();
</script>

<script>
    //Creates CodeMirror instance
    const editor_html = CodeMirror(document.getElementById("editor-html"), {
        mode: 'xml',
        value: '{!! $lesson->code !!}',
        lineNumbers: true,
        autoCloseTags: true,
        autoCloseBrackets: true,
        theme: 'dracula',

    })

    const editor_css = CodeMirror(document.getElementById("editor-css"), {
        mode: 'css',
        value: '',
        lineNumbers: true,
        autoCloseTags: true,
        autoCloseBrackets: true,
        theme: 'dracula',
    })

    const editor_js = CodeMirror(document.getElementById("editor-js"), {
        mode: 'javascript',
        value: '',
        lineNumbers: true,
        autoCloseTags: true,
        autoCloseBrackets: true,
        theme: 'dracula',
    })

    editor_html.setSize(null, 420);
    editor_css.setSize(null, 420);
    editor_js.setSize(null, 420);

    // //Append HTML
    // const liveRoom = document.getElementById('output');
    // liveRoom.contentWindow.document.body.innerHTML = '';
    //
    // const style = document.createElement('style');
    // style.setAttribute('id', 'style');
    // style.innerHTML = '';
    //
    // const script = document.createElement('script');
    // script.innerHTML = '';
    //
    // liveRoom.contentWindow.document.head.appendChild(style);
    // liveRoom.contentWindow.document.head.appendChild(script)
    //
    // // Event Listener
    // CodeMirror.on(editor_html, 'change', function () {
    //     liveRoom.contentWindow.document.body.innerHTML = editor_html.getValue();
    // })

    const liveRoom = document.getElementById('output');
    liveRoom.contentWindow.document.body.innerHTML = '';
    const style = document.createElement('style');
    style.setAttribute('id', 'style');
    style.innerHTML = ''

    const script = document.createElement('script');
    script.setAttribute('id', 'script');
    script.innerHTML = ''

    liveRoom.contentWindow.document.head.appendChild(style);
    liveRoom.contentWindow.document.head.appendChild(script)

    CodeMirror.on(editor_html, 'change', function () {
        liveRoom.contentWindow.document.body.innerHTML = editor_html.getValue();
    })

    // CodeMirror.on(editor_html, 'focus', function () {
    //     liveRoom.contentWindow.document.body.innerHTML = editor_html.getValue();
    // })

    CodeMirror.on(editor_css, 'change', function () {
        liveRoom.contentWindow.document.getElementById('style').innerHTML = editor_css.getValue();
    })
    CodeMirror.on(editor_js, 'change', function () {
        liveRoom.contentWindow.document.getElementById('script').innerHTML = editor_js.getValue();
    })

</script>
</body>

</html>
