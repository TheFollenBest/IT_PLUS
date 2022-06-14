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

<body>

<main>
    <section class="editor">
        <div class="editor__wrp card-header">
            <div class="card ">
                <label for="html-code" class="card-title">HTML</label>
                <textarea name="editor_html" id="editor-html" class="editor__input editor__input--html"></textarea>
            </div>

            <div class="card">
                <label for="css-code" class="card-title">CSS</label>
                <textarea name="editor_css" id="editor-css" class="editor__input editor__input--css"></textarea>
            </div>

            <div class="card">
                <label for="js-code" class="card-title">JS</label>
                <textarea name="editor_js" id="editor-js" class="editor__input editor__input--js"></textarea>
            </div>
        </div>
        <iframe src="" id="output" class="editor__output"></iframe>
    </section>
</main>

{{--<script type="text/javascript">--}}
{{--    function run(){--}}
{{--        let htmlCode = document.querySelector(".editor #html-code").value;--}}
{{--        let cssCode = "<style>"+document.querySelector(".editor #css-code").value+"</style>";--}}
{{--        let jsCode = document.querySelector(".editor #js-code").value;--}}
{{--        let output = document.querySelector(".editor #output");--}}
{{--        // console.log(htmlCode, cssCode, jsCode, output)--}}
{{--        output.contentDocument.body.innerHTML = htmlCode+cssCode;--}}
{{--        output.contentWindow.eval(jsCode);--}}
{{--    }--}}
{{--    run();--}}
{{--    document.querySelector(".editor #html-code").addEventListener("keyup", run);--}}
{{--    document.querySelector(".editor #css-code").addEventListener("keyup", run);--}}
{{--    document.querySelector(".editor #js-code").addEventListener("keyup", run);--}}
{{--</script>--}}
</body>
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
    const editor_html = CodeMirror.fromTextArea(document.getElementById("editor-html"), {
        mode: 'xml',
        value: '',
        lineNumbers: true,
        autoCloseTags: true,
        autoCloseBrackets: true,
        theme: 'dracula',

    })

    const editor_css = CodeMirror.fromTextArea(document.getElementById("editor-css"), {
        mode: 'css',
        value: '',
        lineNumbers: true,
        autoCloseTags: true,
        autoCloseBrackets: true,
        theme: 'dracula',
    })

    const editor_js = CodeMirror.fromTextArea(document.getElementById("editor-js"), {
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
