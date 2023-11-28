import axios from 'axios'

export const list = axios.create({
    baseURL: 'http://localhost:3101/list'
})