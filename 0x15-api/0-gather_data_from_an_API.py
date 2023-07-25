#!/usr/bin/python3
""" A Python script that uses this REST API, for a given employee ID, and
returns information about his/her TODO list progress. """

import requests
from sys import argv


if __name__ == '__main__':
    """ To get get employee response [used to get name in line 19]"""
    employee_Id = argv[1]
    base_Url = "https://jsonplaceholder.typicode.com/users"
    url = base_Url + "/" + employee_Id

    response_1 = requests.get(url)
    employee_Name = response_1.json().get('name')

    todo_Url = url + "/todos"
    response_2 = requests.get(todo_Url)
    tasks = response_2.json()
    done = 0
    done_tasks = []

    for task in tasks:
        if task.get('completed'):
            done_tasks.append(task)
            done += 1

    print("Employee {} is done with tasks({}/{}):"
          .format(employee_Name, done, len(tasks)))

    for task in done_tasks:
        print("\t {}".format(task.get('title')))
