#!/usr/bin/python3
""" Using what you did in the task #0, extend your Python script to export
data in the CSV format."""

import requests
from sys import argv


if __name__ == '__main__':
    """ To get get employee response [used to get name in line 19]"""
    employee_Id = argv[1]
    base_Url = "https://jsonplaceholder.typicode.com/users"
    url = base_Url + "/" + employee_Id

    response = requests.get(url)
    username = response.json().get('username')

    todo_Url = url + "/todos"
    response = requests.get(todo_Url)
    tasks = response.json()

    with open('{}.csv'.format(employee_Id), 'w') as file:
        for task in tasks:
            file.write('"{}","{}","{}","{}","{}"\n'
                       .format(employee_Id, username, task.get('completed'),
                               task.get('title'), task.get('id')))
