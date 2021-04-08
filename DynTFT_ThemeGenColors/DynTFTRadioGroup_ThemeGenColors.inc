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

CL_All_DynTFTRadioGroup_Colors: array[0..CL_All_DynTFTRadioGroup_ColorsCount - 1] of TColor = (CL_LIGHTBLUE, CL_BLACK, CL_MEDGRAY, CL_GRAY);

CL_DynTFTRadioGroup_Background: TColor absolute CL_All_DynTFTRadioGroup_Colors[0];
CL_DynTFTRadioGroup_EnabledFont: TColor absolute CL_All_DynTFTRadioGroup_Colors[1];
CL_DynTFTRadioGroup_DisabledFont: TColor absolute CL_All_DynTFTRadioGroup_Colors[2];
CL_DynTFTRadioGroup_Border: TColor absolute CL_All_DynTFTRadioGroup_Colors[3];