class Point{
    float x;
    float y;

    Point(float _x, float _y){
        this.x = _x;
        this.y = _y;
    }

    void display(){
        fill(255, 50);
        ellipse(this.x, this.y, 5, 5);
    }
}