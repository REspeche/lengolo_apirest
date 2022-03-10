const mailTemplates = {
      testEmail: {
        subject: 'Test email from lengolo!',
        text: 'Hi, this is a test mail.',
        html: 'Hi, this is a test mail.',
        links: []
      },
      activate: {
        subject: '<%=name%>, active su cuenta en lengolo!',
        text:  'Hola <%=name%>,\n'+
               '\n'+
               'Se ha registrado en lengolo.\n'+
               'Para activar la cuenta, copie el siguiente link en su navegador:\n'+
               '<%=link1%>\n'+
               '\n',
        html:  'Hola <%=name%>,<br/>'+
               '<br/>'+
               'Se ha registrado en lengolo. <br/>'+
               'Para activar la cuenta, haga clik en el siguiente link en su navegador:<br/>'+
               '<a href="<%=link1%>" target="_blank"><%=link1%></a><br/>',
        links: ['<%=server%>/activeaccount?email=<%=email%>&hash=<%=hash%>']
      },   
      welcome: {
        subject: '<%=name%>, bienvenido a lengolo!',
        text:  'Hola <%=name%>,\n'+
               '\n'+
               'Bienvenido a lengolo. La tecnología al alcance de su mano.\n'+
               '\n'+
               'Complete su perfil para empezar a cargar el menú de su restaurante.\n'+
               '<%=link1%>\n'+
               '\n',
        html:  'Hola <%=name%>,<br/>'+
               '<br/>'+
               'Bienvenido a lengolo. La tecnología al alcance de su mano. <br/>'+
               '<br/>'+
               'Complete su perfil para empezar a cargar el menú de su restaurante. <br/>'+
               '<a href="<%=link1%>" target="_blank"><%=link1%></a><br/>',
        links: ['<%=server%>/profile']
      },
      forgotPass: {
        subject: '<%=name%>, quiero generar una nueva contraseña en lengolo',
        text:  'Hola <%=name%>, olvidó su contraseña?.\n'+
               '\n'+
               'Nosotros haremos un pedido para cambiar su conrtaseña.\n'+
               'Si quiere proseguir, copie el siguiente link en el navegador:\n'+
               '<%=link1%>\n'+
               '\n'+
               'Si usted no quiere cambiar la contraseña, por favor ignore este correo.\n',
        html:  'Hola <%=name%>, olvidó su contraseña?.<br/>'+
               '<br/>'+
               'Nosotros haremos un pedido para cambiar su conrtaseña.<br/>'+
               'Si quiere proseguir, haga clik en el siguiente link en el navegador:<br/>'+
               '<a href="<%=link1%>" target="_blank"><%=link1%></a><br/>'+
               '<br/>'+
               'Si usted no quiere cambiar la contraseña, por favor ignore este correo.<br/>',
        links: ['<%=server%>/changepass?email=<%=email%>&hash=<%=hash%>']
      },
      qrRequest: {
       subject: 'Se solicitó un pack de códigos QR [<%=id%>]',
       text:  'Hola Ricardo,\n'+
              '\n'+
              'Se solicitó un pack de códigos QR [<%=id%>].\n'+
              '\n',
       html:  'Hola Ricardo,<br/>'+
              '<br/>'+
              'Se solicitó un pack de códigos QR [<%=id%>].<br/>'+
              '<br/>',
       links: [],
       email: 'ricardo.espeche@incloux.com'
     }
   };
   
   module.exports = mailTemplates;
   