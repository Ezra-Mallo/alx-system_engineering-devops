#!/usr/bin/python3
""" Using what you did in the task #0, extend your Python script to export
data in the CSV format."""

import json
import requests


if __name__ == '__main__':
    """ To get get employee response [used to get name in line 19]"""
    baseUrl = "https://jsonplaceholder.typicode.com/users"

    response = requests.get(baseUrl)
    users = response.json()

    my_dict = {}
    for user in users:
        user_id = user.get('id')
        username = user.get('username')
        url = "{}/{}".format(baseUrl, user_id)
        url = url + '/todos/'
        response = requests.get(url)
        tasks = response.json()
        my_dict[user_id] = []
        for task in tasks:
            my_dict[user_id].append({
                "task": task.get('title'),
                "completed": task.get('completed'),
                "username": username
            })

    with open('todo_all_employees.json', 'w') as filename:
        json.dump(my_dict, filename)
