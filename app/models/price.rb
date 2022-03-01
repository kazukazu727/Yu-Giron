class Price < ActiveHash::Base
  self.data=[
    {id: 1, name: "---"},
    {id: 2, name: "無料"},
    {id: 3, name: "~1000円"},
    {id: 4, name: "1000~2000円"},
    {id: 5, name: "2000~4000円"},
    {id: 6, name: "4000~6000円"},
    {id: 7, name: "6000円~"},
    ]
end
