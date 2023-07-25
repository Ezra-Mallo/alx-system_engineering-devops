#!/usr/bin/python3
""" Using what you did in the task #0, extend your Python script to export
data in the CSV format."""

import json
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
    my_dict = {employee_Id: []}
    for task in tasks:
        my_dict[employee_Id].append({"task": task.get('title'),
            "completed": task.get('completed'),"username": username})

    with open('{}.json'.format(employee_Id), 'w') as filename:
        json.dump(my_dict, filename)





