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

unit DynTFTColorThemeGenLiveColors;

interface

uses
  DynTFTConsts, Graphics;

type
  TColorArray = array[0..0] of TColor;
  PColorArray = ^TColorArray;

var
  LiveColors: array[0..17] of PColorArray = (
    @CL_All_DynTFTArrowButton_Colors,
    @CL_All_DynTFTButton_Colors,
    @CL_All_DynTFTCheckBox_Colors,
    @CL_All_DynTFTEdit_Colors,
    @CL_All_DynTFTItems_Colors,
    @CL_All_DynTFTKeyButton_Colors,
    @CL_All_DynTFTLabel_Colors,
    @CL_All_DynTFTListBox_Colors,
    @CL_All_DynTFTMessageBox_Colors,
    @CL_All_DynTFTPanel_Colors,
    @CL_All_DynTFTProgressBar_Colors,
    @CL_All_DynTFTRadioButton_Colors,
    @CL_All_DynTFTRadioGroup_Colors,
    @CL_All_DynTFTScreen_Colors,
    @CL_All_DynTFTScrollBar_Colors,
    @CL_All_DynTFTTabButton_Colors,
    @CL_All_DynTFTTrackBar_Colors,
    @CL_All_DynTFTVirtualKeyboard_Colors
  );

  LiveColorsConstCount: array[0..17] of Integer = (
    CL_All_DynTFTArrowButton_ColorsCount,
    CL_All_DynTFTButton_ColorsCount,
    CL_All_DynTFTCheckBox_ColorsCount,
    CL_All_DynTFTEdit_ColorsCount,
    CL_All_DynTFTItems_ColorsCount,
    CL_All_DynTFTKeyButton_ColorsCount,
    CL_All_DynTFTLabel_ColorsCount,
    CL_All_DynTFTListBox_ColorsCount,
    CL_All_DynTFTMessageBox_ColorsCount,
    CL_All_DynTFTPanel_ColorsCount,
    CL_All_DynTFTProgressBar_ColorsCount,
    CL_All_DynTFTRadioButton_ColorsCount,
    CL_All_DynTFTRadioGroup_ColorsCount,
    CL_All_DynTFTScreen_ColorsCount,
    CL_All_DynTFTScrollBar_ColorsCount,
    CL_All_DynTFTTabButton_ColorsCount,
    CL_All_DynTFTTrackBar_ColorsCount,
    CL_All_DynTFTVirtualKeyboard_ColorsCount
  );

implementation

end.
