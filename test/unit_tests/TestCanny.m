classdef TestCanny
    %TestCanny
    properties (Constant)
        path = fileparts(fileparts(mfilename('fullpath')))
        img = rgb2gray(imread([TestCanny.path,filesep,'img001.jpg']))
    end
    
    methods (Static)
        function test_1
            result = cv.Canny(TestCanny.img, 192);
        end
        
        function test_2
            result = cv.Canny(TestCanny.img, [192,96]);
        end
        
        function test_error_1
            try
                cv.Canny();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end

