const { Client, LocalAuth } = require('whatsapp-web.js')
const qrcode = require('qrcode-terminal')

//let sg = {}

const client = new Client({
    authStrategy: new LocalAuth(),
    deviceName: 'WHATEX'
})

client.on('qr', (qr)=> {
    qrcode.generate(qr, {small:true})
    console.log(qr)
})

client.on('ready', ()=> {
    console.log('READY')
    //sg = await client.getChatById("120363424342605725@g.us")
})



client.initialize()
