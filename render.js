const {MessageMedia} = require('whatsapp-web.js')
const fs = require('node:fs');
const { ChildProcess } = require('node:child_process');

async function sticker_from_tex(latex, name) {
    fs.writeFile(`temp/${name}.tex`, latex)
    //ChildProcess.
}