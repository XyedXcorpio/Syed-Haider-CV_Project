import heapq
from utils import get_neighbours

def heuristic(cell1, cell2):
    # Manhattan distance
    manhattan_dist = abs(cell1[0] - cell2[0]) + abs(cell1[1] - cell2[1])
    return manhattan_dist

def A_star(Grid, START, END, size):
    #queue for a_star storing tuples
    open_list = list()
    heapq.heappush(open_list, (0, START))

    # created dictionary storing cheapest cost
    g_score = {START: 0}

    # create dictionary storing the parent of each node for final path value
    parent = {START: None}

    explored = list()  #keeping the track visited nodes in order of they were visited

    while open_list:
        # pull the node out with the low score
        _, current = heapq.heappop(open_list)
        # If reach the goal, keep the path
        if current == END:
            path = list()
            while current is not None:
                path.append(current)
                current = parent[current]
            # Print the final path and explored nodes
            print("A_star Results")
            print(f"Final Path: {path[::-1]}")
            print(f"Explored Node: {explored}")
            return path[::-1], explored  
        explored.append(current) 
        
        for neighbor in get_neighbours(current, Grid):
            if (Grid[neighbor] == 1) or (neighbor in explored) or (neighbor in open_list):
                continue

            move_cost = Grid[neighbor[0]][neighbor[1]]
            # move_cost = Grid[neighbor]
            tentative_g_score = g_score[current] + move_cost 
            if (neighbor not in g_score) or (tentative_g_score < g_score[neighbor]):
                g_score[neighbor] = tentative_g_score
                f_score = tentative_g_score + heuristic(neighbor, END)
                heapq.heappush(open_list, (f_score, neighbor))
                parent[neighbor] = current

