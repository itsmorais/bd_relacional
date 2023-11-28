import axios from 'axios'

export function update(id: number) {
    return axios.get(`http://localhost:3101/update/${id}`)
}