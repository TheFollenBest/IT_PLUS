<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lesson-1</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">

    <!-- codemirror -->
    <script src="/codemirror/lib/codemirror.js"></script>
    <script src="/codemirror/mode/xml/xml.js"></script>
    <script src="/codemirror/mode/css/css.js"></script>
    <script src="/codemirror/mode/javascript/javascript.js"></script>
    <link rel="stylesheet" href="/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="/codemirror/theme/dracula.css">
    <script src="/codemirror/addon/edit/closetag.js"></script>

</head>

<body>

<main>
    <section class="trainer">
        <aside class="trainer-navigation">
            <section class="trainer-navigation__content">
                <span class="trainer-navigation__top element-hint">
                    <span class="element-hint__wrp">
                        <a href="" class="trainer-navigation__top-button">
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
                <div class="trainer-navigation__bottom"></div>
            </section>
        </aside>

        <section class="editor">
            <div class="trainer-content__code">
                <div class="tab">
                    <button class="tablinks" onclick="openTab(event, 'HTML')" id="defaultOpen">HTML</button>
                    <button class="tablinks" onclick="openTab(event, 'CSS')">CSS</button>
                    <button class="tablinks" onclick="openTab(event, 'JS')">JS</button>
                </div>

                <div id="HTML" class="tabcontent">
                    <div id="editor-html" name="editor_html" class="editor-html"></div>
                </div>

                <div id="CSS" class="tabcontent">
                    <div id="editor-css" name="editor_css" class="form-control"></div>
                </div>

                <div id="JS" class="tabcontent">
                    <div id="editor-js" name="editor_js" class="form-control"></div>
                </div>
            </div>

            <div class="trainer-content__output live-room">
                <iframe src="" id="output" class="editor__output"></iframe>
            </div>
        </section>
    </section>

    {{--    <div class="studio">--}}
    {{--        <div class="control-room">--}}
    {{--            <div class="editor" id="html"></div>--}}
    {{--        </div>--}}
    {{--    </div>--}}
    {{--    <div class="live-room">--}}
    {{--        <iframe id="live" src=""></iframe>--}}
    {{--    </div>--}}
</main>

<style>
    body {font-family: Arial;}

    /* Style the tab */
    .tab {
        overflow: hidden;
        border: 1px solid #ccc;
        background-color: #f1f1f1;
    }

    /* Style the buttons inside the tab */
    .tab button {
        background-color: inherit;
        float: left;
        border: none;
        outline: none;
        cursor: pointer;
        padding: 14px 16px;
        transition: 0.3s;
        font-size: 17px;
    }

    /* Change background color of buttons on hover */
    .tab button:hover {
        background-color: #ddd;
    }

    /* Create an active/current tablink class */
    .tab button.active {
        background-color: #ccc;
    }

    /* Style the tab content */
    .tabcontent {
        display: none;
        padding: 6px 12px;
        border: 1px solid #ccc;
        border-top: none;
    }
</style>

{{-- Вкладки --}}
<script>
    function openTab(evt, editorName) {
        let i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(editorName).style.display = "block";
        evt.currentTarget.className += " active";
    }
    document.getElementById("defaultOpen").click();
</script>

{{-- Codemirror --}}
{{--<script>--}}
{{--    let editor_html = CodeMirror--}}
{{--    (document.getElementById('editor-html'), {--}}
{{--        mode: "xml",--}}
{{--        theme: "dracula",--}}
{{--        lineNumbers: "true",--}}
{{--        autoCloseTags: "true"--}}
{{--    });--}}

{{--    let editor_css = CodeMirror.fromTextArea--}}
{{--    (document.getElementById('editor-css'), {--}}
{{--        mode: "css",--}}
{{--        theme: "dracula",--}}
{{--        lineNumbers: "true",--}}
{{--        autoCloseTags: "true"--}}
{{--    });--}}

{{--    let editor_js = CodeMirror.fromTextArea--}}
{{--    (document.getElementById('editor-js'), {--}}
{{--        mode: "javascript",--}}
{{--        theme: "dracula",--}}
{{--        lineNumbers: "true",--}}
{{--        autoCloseTags: "true"--}}
{{--    });--}}
{{--    const output = document.getElementById('output');--}}
{{--    liveRoom.contentWindow.document.body.innerHTML = '<h1>Hello World!</h1>';--}}


{{--    // Event Listener--}}
{{--    CodeMirror.on(editor_html, 'change', function () {--}}
{{--        output.contentWindow.document.body.innerHTML = editor_html.getValue();--}}
{{--    })--}}
{{--</script>--}}

<script>
    //Creates CodeMirror instance
    const editor_html = CodeMirror(document.getElementById("editor-html"), {
        mode: 'xml',
        value: '',
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
    CodeMirror.on(editor_css, 'change', function () {
        liveRoom.contentWindow.document.getElementById('style').innerHTML = editor_css.getValue();
    })
    CodeMirror.on(editor_js, 'change', function () {
        liveRoom.contentWindow.document.getElementById('script').innerHTML = editor_js.getValue();
    })

</script>
</body>

</html>
