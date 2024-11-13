module.exports = {
    getMessageObject: function(type, message) {
        return {
            type: type, 
            message: Array.isArray(message) ? message : [message]
        };
    }
};