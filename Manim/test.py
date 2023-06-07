from manim import *

Home = "D:/MicrosoftVSCodeProjects/TeXProjects/Files"

class Test (Scene):
    def construct(self):
        
        s = Square().set_color(GREEN).set_fill(BLUE, opacity=.7)

        self.play(s.animate.rotate(PI/2))
