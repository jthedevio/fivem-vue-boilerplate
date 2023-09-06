import axios from 'axios';

class NUIService {
    async call(method, params) {
        const uiCloseResponse = {
            error: null,
            data: null
        }
        
        try {
            /* eslint-disable */ 
            const response = await axios.post(`https://${GetParentResourceName()}/${method}`, params);
            const data = response.data;
            
            uiCloseResponse.data = data.data || {}; 
        } catch(error) {
            uiCloseResponse.error = {
                message: "NUIService Service - Something unexpected happened while to call FiveM NUI Method " + method + ". Error: " + error
            }
        }

        return uiCloseResponse;
    }
}

export default new NUIService();