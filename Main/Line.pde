class Line{
    Point start;
    Point end;
    int depth;

    Line(Point _s, Point _e, int _d){
        this.start = _s;
        this.end = _e;
        this.depth = _d;
    }

    void display(){
        stroke(255);
        line(this.start.x, this.start.y, this.end.x, this.end.y);
        // this.start.display();
        // this.end.display();
    }
    void divide(){
        float minX = min(this.start.x, this.end.x);
        float maxX = max(this.start.x, this.end.x);
        float minY = min(this.start.y, this.end.y);
        float maxY = max(this.start.y, this.end.y);
        float diff = max(maxX-minX, maxY-minY);
        float tempX = random(minX-diff/5, maxX+diff/5);
        float tempY = random(minY-diff/5, maxY+diff/5);
        Point middle = new Point(tempX, tempY);
        lines.add(new Line(this.start, middle, depth+1));
        lines.add(new Line(middle, this.end, depth+1));
    }
}