def get_neighbours(cell, Grid):
    x, y = cell
    neighbours = []
    size = len(Grid)

    # Check if x and y are scalar values
    if isinstance(x, (list, tuple)) or isinstance(y, (list, tuple)):
        raise ValueError("x and y must be scalar values, not arrays or lists")

    # Adding valid neighboring cells based on grid boundaries
    if x > 0: neighbours.append((x - 1, y))  # left
    if x < size - 1: neighbours.append((x + 1, y))  # right
    if y > 0: neighbours.append((x, y - 1))  # up
    if y < size - 1: neighbours.append((x, y + 1))  # down

    return neighbours
