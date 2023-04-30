import axios from 'axios'
// import { Settings } from '@settings';

axios.defaults.xsrfHeaderName = 'x-csrftoken'
axios.defaults.xsrfCookieName = 'csrftoken'
axios.defaults.withCredentials = true
axios.defaults.headers.common['Content-Type'] = 'application/json'

export const defaultBackendHttpClient = axios.create({
    baseURL: `http://localhost:8000/`,
    timeout: 60000,
})
