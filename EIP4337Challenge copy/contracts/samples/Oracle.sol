contract oracle{
    /**
     * @notice 'decimals' is the decimals of erc20 token
    */
    uint public decimals = 18;
    uint public multipler = 10 ** decimals;
    uint price;
    constructor(uint _price) {
        price = _price;
    }

    /**
     * @notice (((wantedETH[wei] * multipler)/price) * multipler) / multipler ^ 2
     * use multipler to ensure the accurancy of the result
    */
    function getTokenValueOfEth(uint256 wantedETH)public view returns(uint tokensRequired){
        return (((wantedETH * multipler/price)) * multipler)/(multipler * multipler);
    }
}