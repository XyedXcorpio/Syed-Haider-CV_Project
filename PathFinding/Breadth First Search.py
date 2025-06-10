from collections import deque
from utils import get_neighbours



def Bfs(Grid, START, END, size):
    queue = deque([START])
    parent = {START: None}
    explored = list()  # Use a list to maintain the order of exploration

    while queue:
        current = queue.popleft()
        
        # If reach the goal, keep the path
        if current == END:
            path = list()
            while current is not None:
                path.append(current)
                current = parent[current]
            # Print the final path and explored nodes
            print("BFS Result")
            print(f"Final Path: {path[::-1]}")
            print(f'Explored Nodes: {explored}')
            return path[::-1], explored  # Return the final path and all explored paths

        explored.append(current)  #keeping the track visited nodes in order of they were visited
        
        for neighbor in get_neighbours(current, Grid):
            if (Grid[neighbor] != 1) and (neighbor not in explored) and (neighbor not in queue):
                queue.append(neighbor)
                parent[neighbor] = current
