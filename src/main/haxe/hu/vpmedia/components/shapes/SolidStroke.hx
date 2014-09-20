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

import flash.display.CapsStyle;
import flash.display.Graphics;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
class SolidStroke extends SolidFill {
    public var thickness:Float;
    public var hinting:Bool;
    public var scaleMode:LineScaleMode;
    public var caps:CapsStyle;
    public var joints:JointStyle;
    public var miterLimit:Float;

//--------------------------------------
//  Constructor
//--------------------------------------

    public function new(?color:Int = 0x000000, ?thickness:Float = 1, ?alpha:Float = 1) {
        super(color, alpha);
        colorType = EGraphicsTextureType.SOLID;
        this.thickness = thickness;
        hinting = true;
        scaleMode = LineScaleMode.NONE;
        caps = CapsStyle.NONE;
        joints = JointStyle.MITER;
        miterLimit = 3;
    }

    override function draw(graphics:Graphics):Void {
        graphics.lineStyle(thickness, color, alpha, hinting, scaleMode, caps, joints, miterLimit);
    }
}