const axios = require('axios');
const baseURL = "http://127.0.0.1:3333";
const { getMessageObject } = require('../utils/messageUtils');



class MissionsController {

    async displayMissions(req, res){
            try {
         
                const dataUser= [] // retornar dados do usuario 
                const message = [];
    
                return res.render('missoes/missoes', { message, dataUser  });
    
            } catch (error) {
                console.error('Erro ao buscar o perfil do usuário:', error.message);
                const message = getMessageObject('danger', 'Falha ao exibir pagina tente novamente.');
                return res.render('home/home', { message, dataUser: [] });
            }
        

    }

}

module.exports = MissionsController;