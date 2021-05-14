ArrayList<Line> lines;

void setup(){
    size(600, 600);
    frameRate(2);

    lines = new ArrayList<Line>();
    lines.add(new Line(new Point(width/2, height/20), new Point(width/2, 19*height/20), 0));
}

void draw(){
    background(0);
    for(Line line : lines) line.display();
    if(lines.get(0).depth <= 20) function();
}

void function(){
    int fixedSize = lines.size();
    for(int i=0; i<fixedSize; i++){
        Line line = lines.get(0);
        lines.remove(0);
        line.divide();
    }
}