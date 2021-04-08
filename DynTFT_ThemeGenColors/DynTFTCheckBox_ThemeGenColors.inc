{   DynTFT  - graphic components for microcontrollers
    Copyright (C) 2017 VCC
    release date: 29 Dec 2017
    author: VCC

    This file is part of DynTFT project.

    DynTFT is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, version 3 of the License.

    DynTFT is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with DynTFT, in COPYING.LESSER file.
    If not, see <http://www.gnu.org/licenses/>.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
    DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
    OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
}

CL_All_DynTFTCheckBox_Colors: array[0..CL_All_DynTFTCheckBox_ColorsCount - 1] of TColor = (CL_WHITE, CL_GRAY, CL_SILVER, CL_DARKGRAY, CL_WHITE, CL_LIGHTBLUE, CL_GRAY, CL_WHITE, CL_BLACK, CL_BLACK, CL_MEDGRAY);

CL_DynTFTCheckBox_LightEdge: TColor absolute CL_All_DynTFTCheckBox_Colors[0];
CL_DynTFTCheckBox_DarkEdge: TColor absolute CL_All_DynTFTCheckBox_Colors[1];
CL_DynTFTCheckBox_LightDarkEdge: TColor absolute CL_All_DynTFTCheckBox_Colors[2];
CL_DynTFTCheckBox_DarkDarkEdge: TColor absolute CL_All_DynTFTCheckBox_Colors[3];
CL_DynTFTCheckBox_EnabledBox: TColor absolute CL_All_DynTFTCheckBox_Colors[4];
CL_DynTFTCheckBox_DisabledBox: TColor absolute CL_All_DynTFTCheckBox_Colors[5];
CL_DynTFTCheckBox_FocusRectangle: TColor absolute CL_All_DynTFTCheckBox_Colors[6];
CL_DynTFTCheckBox_Background: TColor absolute CL_All_DynTFTCheckBox_Colors[7];
CL_DynTFTCheckBox_Tick: TColor absolute CL_All_DynTFTCheckBox_Colors[8];
CL_DynTFTCheckBox_EnabledFont: TColor absolute CL_All_DynTFTCheckBox_Colors[9];
CL_DynTFTCheckBox_DisabledFont: TColor absolute CL_All_DynTFTCheckBox_Colors[10];
