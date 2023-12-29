using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ChineseCheckersClient.View {
    /// <summary>
    /// Lógica de interacción para BoardGame.Iaml
    /// </summary>
    public partial class BoardGame : Window {

        private Point selectedMarblePosition;
        private Image selectedMarbleImage;
        private List<UIElement> highlightedPositions = new List<UIElement>();

        public BoardGame() {
            InitializeComponent();
            CreateBoardForTwoPlayers();
            DisplayBoard();
        }

        private const char RED = 'R';
        private const char BLUE = 'B';
        private const char GREEN = 'G';
        private const char PURPLE = 'P';
        private const char VALID = 'V';

        private char[,] board;
        public char[,] Board { get => board; set => board = value; }

        private void CreateBoardForTwoPlayers() {
            board = new char[,] {
                { 'I','I','I','I','I','I','I','I','I','I','I','I','B','I','I','I','I','I','I','I','I','I','I','I','I' },
                { 'I','I','I','I','I','I','I','I','I','I','I','B','I','B','I','I','I','I','I','I','I','I','I','I','I' },
                { 'I','I','I','I','I','I','I','I','I','I','B','I','B','I','B','I','I','I','I','I','I','I','I','I','I' },
                { 'I','I','I','I','I','I','I','I','I','B','I','B','I','B','I','B','I','I','I','I','I','I','I','I','I' },
                { 'V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V' },
                { 'I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I' },
                { 'I','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','I' },
                { 'I','I','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','I','I' },
                { 'I','I','I','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','I','I','I' },
                { 'I','I','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','I','I' },
                { 'I','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','I' },
                { 'I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I' },
                { 'V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V','I','V' },
                { 'I','I','I','I','I','I','I','I','I','G','I','G','I','G','I','G','I','I','I','I','I','I','I','I','I' },
                { 'I','I','I','I','I','I','I','I','I','I','G','I','G','I','G','I','I','I','I','I','I','I','I','I','I' },
                { 'I','I','I','I','I','I','I','I','I','I','I','G','I','G','I','I','I','I','I','I','I','I','I','I','I' },
                { 'I','I','I','I','I','I','I','I','I','I','I','I','G','I','I','I','I','I','I','I','I','I','I','I','I' },
            };
        }

        private void DisplayBoard() {
            gridBoard.Children.Clear();
            for (int row = 0; row < board.GetLength(0); row++) {
                for (int col = 0; col < board.GetLength(1); col++) {
                    Image marbleImage = new Image {
                        Width = 30,
                        Height = 30,
                        Source = GetMarbleImage(board[row, col]),
                        Cursor = Cursors.Hand
                    };

                    marbleImage.MouseDown += MarbleImageMouseDown;

                    Grid.SetColumn(marbleImage, col);
                    Grid.SetRow(marbleImage, row);

                    gridBoard.Children.Add(marbleImage);
                }
            }
            gridBoard.MouseUp += GridBoardMouseUp;
        }

        private BitmapImage GetMarbleImage(char state) {
            string imagePath = "";
            switch (state) {
                case RED:
                    imagePath = "/Resources/Images/RedMarble.png";
                    break;
                case BLUE:
                    imagePath = "/Resources/Images/BlueMarble.png";
                    break;
                case GREEN:
                    imagePath = "/Resources/Images/GreenMarble.png";
                    break;
                case PURPLE:
                    imagePath = "/Resources/Images/PurpleMarble.png";
                    break;
                default:
                    break;
            }
            return new BitmapImage(new Uri(imagePath, UriKind.Relative));
        }

        private void MarbleImageMouseDown(object sender, MouseButtonEventArgs e) {
            if (selectedMarbleImage != null) {
                selectedMarbleImage.Opacity = 1.0;
            }

            Image clickedMarble = (Image)sender;
            int column = Grid.GetColumn(clickedMarble);
            int row = Grid.GetRow(clickedMarble);
            selectedMarblePosition = new Point(column, row);

            if (board[(int)selectedMarblePosition.Y, (int)selectedMarblePosition.X] != VALID) {
                clickedMarble.Opacity = 0.7;
                selectedMarbleImage = clickedMarble;
                HighlightValidPositions(selectedMarblePosition);
            }
        }

        private void GridBoardMouseUp(object sender, MouseButtonEventArgs e) {
            Point mousePosition = e.GetPosition(gridBoard);

            int column = (int)(mousePosition.X / 30);
            int row = (int)(mousePosition.Y / 46);
            Point targetPosition = new Point(column, row);

            if (IsMoveValid(selectedMarblePosition, targetPosition)) {
                Move(selectedMarblePosition, targetPosition);
                DisplayBoard();
            }
        }

        private void HighlightValidPositions(Point selectedPosition) {
            foreach (UIElement highlightedPosition in highlightedPositions) {
                gridBoard.Children.Remove(highlightedPosition);
            }
            highlightedPositions.Clear();

            List<Point> possibleMoves = GetAllPosibleMoves(selectedPosition);
            List<Point> possibleJumps = GetAllPossibleJumps(selectedPosition);

            foreach (Point position in possibleMoves.Union(possibleJumps)) {
                Ellipse highlight = new Ellipse {
                    Stroke = Brushes.Yellow,
                    StrokeThickness = 2,
                    Fill = new SolidColorBrush(Color.FromArgb(100, 255, 255, 0)),
                    Width = 30,
                    Height = 30
                };

                Grid.SetColumn(highlight, (int)position.X);
                Grid.SetRow(highlight, (int)position.Y);

                gridBoard.Children.Add(highlight);
                highlightedPositions.Add(highlight);
            }
        }

        private bool IsMoveValid(Point from, Point to) {
            List<Point> possibleMoves = GetAllPosibleMoves(from);
            List<Point> possibleJumps = GetAllPossibleJumps(from);

            return (possibleMoves.Any(move => move == to && board[(int)to.Y, (int)to.X] == VALID)
                    || possibleJumps.Any(jump => jump == to && board[(int)to.Y, (int)to.X] == VALID))
                   && IsJumpSequenceValid(from, to, new List<Point>());
        }

        private bool IsJumpSequenceValid(Point from, Point to, List<Point> visited) {
            if (Math.Abs(from.X - to.X) == 2 && Math.Abs(from.Y - to.Y) == 2) {
                int midX = (int)(from.X + to.X) / 2;
                int midY = (int)(from.Y + to.Y) / 2;
                Point midPoint = new Point(midX, midY);

                if (visited.Contains(midPoint)) {
                    return false;
                }

                visited.Add(midPoint);

                if (board[(int)midPoint.Y, (int)midPoint.X] != VALID) {
                    return IsJumpSequenceValid(midPoint, to, visited);
                }
            }
            return true;
        }

        private bool IsJumpValid(Point from, Point to) {
            int midX = (int)(from.X + to.X) / 2;
            int midY = (int)(from.Y + to.Y) / 2;
            Point midPoint = new Point(midX, midY);

            return board[(int)midPoint.Y, (int)midPoint.X] != VALID
                && board[(int)to.Y, (int)to.X] == VALID
                && Math.Abs(from.X - to.X) == 2
                && Math.Abs(from.Y - to.Y) == 2;
        }

        private void GetPosibleMoves(ref List<Point> listOfPosibleMoves, Point from) {
            if (board[(int)from.Y - 1, (int)from.X + 1] == VALID) { listOfPosibleMoves.Add(new Point(from.X + 1, from.Y - 1)); }
            if (board[(int)from.Y - 1, (int)from.X - 1] == VALID) { listOfPosibleMoves.Add(new Point(from.X - 1, from.Y - 1)); }
            if (board[(int)from.Y + 1, (int)from.X + 1] == VALID) { listOfPosibleMoves.Add(new Point(from.X + 1, from.Y + 1)); }
            if (board[(int)from.Y + 1, (int)from.X - 1] == VALID) { listOfPosibleMoves.Add(new Point(from.X - 1, from.Y + 1)); }
            if (board[(int)from.Y, (int)from.X - 2] == VALID) { listOfPosibleMoves.Add(new Point(from.X - 2, from.Y)); }
            if (board[(int)from.Y, (int)from.X + 2] == VALID) { listOfPosibleMoves.Add(new Point(from.X + 2, from.Y)); }
        }

        private List<Point> GetAllPosibleMoves(Point from) {
            List<Point> listOfAllPosibleMoves = new List<Point>();
            if (board[(int)from.Y, (int)from.X] != VALID) {
                GetPosibleMoves(ref listOfAllPosibleMoves, from);
            }
            return listOfAllPosibleMoves;
        }

        private void GetPosibleJumps(ref List<Point> listOfPosibleJumps, Point from, List<Point> currentJump = null) {
            if (currentJump == null) {
                currentJump = new List<Point>();
            }
            GetPosibleJumpsRecursive(ref listOfPosibleJumps, from, currentJump);
        }

        private void GetPosibleJumpsRecursive(ref List<Point> listOfPosibleJumps, Point from, List<Point> currentJump) {
            List<Point> possibleJumps = new List<Point> {
                new Point(from.X - 2, from.Y - 2),
                new Point(from.X + 2, from.Y - 2),
                new Point(from.X - 2, from.Y + 2),
                new Point(from.X + 2, from.Y + 2),
                new Point(from.X - 1, from.Y),
                new Point(from.X + 1, from.Y)
            };

            foreach (Point jumpTo in possibleJumps) {
                if (IsJumpValid(from, jumpTo) && !currentJump.Contains(jumpTo)) {
                    List<Point> newJump = new List<Point>(currentJump);
                    newJump.Add(jumpTo);
                    listOfPosibleJumps.Add(jumpTo);
                    GetPosibleJumpsRecursive(ref listOfPosibleJumps, jumpTo, newJump);
                }
            }
        }

        private List<Point> GetAllPossibleJumps(Point from) {
            List<Point> listOfAllPossibleJumps = new List<Point>();
            if (board[(int)from.Y, (int)from.X] != VALID) {
                GetPosibleJumps(ref listOfAllPossibleJumps, from);
            }
            return listOfAllPossibleJumps;
        }

        private void Move(Point from, Point to) {
            board[(int)to.Y, (int)to.X] = board[(int)from.Y, (int)from.X];
            board[(int)from.Y, (int)from.X] = VALID;

            int midX = (int)(from.X + to.X) / 2;
            int midY = (int)(from.Y + to.Y) / 2;
            Point midPoint = new Point(midX, midY);

            if (IsJumpValid(from, to)) {
                board[(int)midPoint.Y, (int)midPoint.X] = VALID;
            }

            selectedMarblePosition = to;
        }
    }
}