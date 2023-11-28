import axios from 'axios'

export function reset() {
    return axios.get(`http://localhost:3101/reset`)
}