# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
  
# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6], # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Left diagonal
  [2,4,6],  # Right diagonal
]

def won?(board)
  WIN_COMBINATIONS.select do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" 
      return win_combination
       if board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
         return win_combination
       
end
end

def full?(board)
  board.all? do |full_board|
    full_board == "X" || full_board == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
  return TRUE
else
  return FALSE
end
end


def winner(board)
  if won?(board)
    win_combination = won?(board)
    winner = board[win_combination[0]]
    return winner
  else
    return
    nil
  end
end
  












