/*
 * =BEGIN MIT LICENSE
 *
 * The MIT License (MIT)
 *
 * Copyright (c) 2012-2014 Andras Csizmadia
 * http://www.vpmedia.eu
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * =END MIT LICENSE
 */
package hu.vpmedia.components.shapes;

import flash.display.Graphics;
import flash.display.DisplayObjectContainer;

class ComplexRectangleShape extends BaseShape {
    public var ellipse:Float;

//--------------------------------------
//  Constructor
//--------------------------------------

    public function new(parent:DisplayObjectContainer, x:Int, y:Int, width:Float, height:Float, ellipse:Float, ?fill:IBaseGraphicsTexture = null, ?stroke:IBaseGraphicsTexture = null, ?drawAfter:Bool = true) {
        type = EShapeType.COMPLEX_RECTANGLE;
        this.ellipse = ellipse;
        super(parent, x, y, width, height, fill, stroke, drawAfter);
    }

    override function drawGeometry():Void {
        canvas.graphics.drawRoundRect(0, 0, width, height, ellipse, ellipse);
    }
}