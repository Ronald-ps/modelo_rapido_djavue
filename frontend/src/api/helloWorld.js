import { defaultBackendHttpClient } from './default-config'

const helloWorld = () => {
  defaultBackendHttpClient.get("hello-word").then( response => response.data )
}

export const defaultAPI = {
  helloWorld,
}
