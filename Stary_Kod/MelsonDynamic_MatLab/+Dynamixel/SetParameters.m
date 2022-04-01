%% Some parameters
AX_slope = 32;
RX_slope = 7;


AX_margin = 1;
RX_margin = 1;

NumberOfDynamixels = 19;
DynamixelAX = [0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 2];
DynamixelRX = [0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0];
DynamixelMX = [1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0];

%% Set minimum CW and CCW slopes
Slope = AX_slope*DynamixelAX + RX_slope*DynamixelRX;

ADDR_RX_CW_COMPLIANCE_SLOP = 28;
ADDR_RX_CCW_COMPLIANCE_SLOP = 29;
LEN_RX_CW_COMPLIANCE_SLOP = 1;
LEN_RX_CCW_COMPLIANCE_SLOP = 1;

Slope(1) = 32;
Slope(7) = 32;

Dynamixel.SendVector( Slope, ADDR_RX_CW_COMPLIANCE_SLOP, LEN_RX_CW_COMPLIANCE_SLOP );

Slope(1) = 32;
Slope(7) = 32;


Dynamixel.SendVector( Slope, ADDR_RX_CCW_COMPLIANCE_SLOP, LEN_RX_CCW_COMPLIANCE_SLOP );


%% Set minimum CW and CCW margins
Margin = AX_margin*DynamixelAX + RX_margin*DynamixelRX;
Margin(19) = 2; % Chest rotation



ADDR_RX_CW_COMPLIANCE_MARGIN = 26;
ADDR_RX_CCW_COMPLIANCE_MARGIN = 27;
LEN_RX_CW_COMPLIANCE_MARGIN = 1;
LEN_RX_CCW_COMPLIANCE_MARGIN = 1;

Margin(1) = 0;
Margin(7) = 0;

Dynamixel.SendVector( Margin, ADDR_RX_CW_COMPLIANCE_MARGIN, LEN_RX_CW_COMPLIANCE_MARGIN );

Margin(1) = 0;
Margin(7) = 0;
Dynamixel.SendVector( Margin, ADDR_RX_CCW_COMPLIANCE_MARGIN, LEN_RX_CCW_COMPLIANCE_MARGIN );



clear AX_slope RX_slope;
clear ADDR_RX_CW_COMPLIANCE_SLOP ADDR_RX_CCW_COMPLIANCE_SLOP;
clear LEN_RX_CW_COMPLIANCE_SLOP LEN_RX_CCW_COMPLIANCE_SLOP Slope;
clear AX_margin RX_margin;
clear ADDR_RX_CW_COMPLIANCE_MARGIN ADDR_RX_CCW_COMPLIANCE_MARGIN;
clear LEN_RX_CW_COMPLIANCE_MARGIN LEN_RX_CCW_COMPLIANCE_MARGIN Margin;
clear NumberOfDynamixels DynamixelRX DynamixelMX DynamixelAX;

clear i ans; 
clear group_num;
