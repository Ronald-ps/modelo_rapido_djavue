import { defaultBackendHttpClient } from './configs/default-config'

const helloWorld = async () => {
  return defaultBackendHttpClient.get("hello-word").then(response => response.data)
}

export const defaultAPI = {
  helloWorld,
}
