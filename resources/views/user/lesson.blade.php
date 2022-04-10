<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lesson-1</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
</head>

<body>

<main>
    <section class="editor">
        <div class="editor__wrp card-header">
            <div class="card ">
                <label for="html-code" class="card-title">HTML</label>
                <textarea name="html-code" id="html-code" class="editor__input editor__input--html"></textarea>
            </div>

            <div class="card">
                <label for="css-code" class="card-title">CSS</label>
                <textarea name="css-code" id="css-code" class="editor__input editor__input--css"></textarea>
            </div>

            <div class="card">
                <label for="js-code" class="card-title">JS</label>
                <textarea name="js-code" id="js-code" class="editor__input editor__input--js"></textarea>
            </div>
        </div>
        <iframe src="" id="output" class="editor__output"></iframe>
    </section>
</main>

    <script type="text/javascript">
        function run(){
            let htmlCode = document.querySelector(".editor #html-code").value;
            let cssCode = "<style>"+document.querySelector(".editor #css-code").value+"</style>";
            let jsCode = document.querySelector(".editor #js-code").value;
            let output = document.querySelector(".editor #output");
            // console.log(htmlCode, cssCode, jsCode, output)
            output.contentDocument.body.innerHTML = htmlCode+cssCode;
            output.contentWindow.eval(jsCode);
        }
        run();
        document.querySelector(".editor #html-code").addEventListener("keyup", run);
        document.querySelector(".editor #css-code").addEventListener("keyup", run);
        document.querySelector(".editor #js-code").addEventListener("keyup", run);
    </script>
</body>

</html>
