from utils import get_neighbours

def Dfs(Grid, START, END, size):

    stack = [START]
    parent = {START: None}
    explored = list()  # Use a list to maintain the order of exploration

    while stack:
        current = stack.pop()

        # If reach the goal, keep the path
        if current == END:
            path = list()
            while current is not None:
                path.append(current)
                current = parent[current]
            # Print the final path and explored nodes
            print("DFS Results")
            print(f'FINAL PATH: {path[::-1]}')
            print(f'EXPLORED NODES; {explored}')
            return path[::-1], explored  # Return the final path and all explored paths

        explored.append(current)  #keeping the track visited nodes in order of they were visited

        for neighbor in get_neighbours(current, Grid):
            if (Grid[neighbor] != 1) and (neighbor not in explored) and (neighbor not in stack):
                stack.append(neighbor)
                parent[neighbor] = current
