local BF_NIL = "BF_NIL"
local realmName
local reseverdata={};
local AllReseverData={};
local BankSaveData;

local function BigFootBank_SendData(sender)
	local completely = true
	local Str="BigFootBankData:";
	local SayTab={}
	local ii =0;
	if BankSaveData[realmName].bankData then
		if BankSaveData[realmName].bankData.numItems and BankSaveData[realmName].bankData.numItems>0 then
			Str = Str..BankSaveData[realmName].bankData.time.."#"..GetRealmName().."#"..BankSaveData[realmName].bankData.numItems.."#";
			for k,v in pairs(BankSaveData[realmName].bankData.Items) do
				for i,j in pairs(v) do
					if string.len(Str)+string.len(tostring(j)..",")>250 then
						if ii >0 then
							Str = Str.."&&";
						end
						ii =ii+1;
						table.insert(SayTab,Str)
						Str =tostring(j)..",";
					else
						Str =Str..tostring(j)..",";
					end
				end
				Str =Str..";";
			end
			if string.len(Str)+string.len("BigFootBankDataend&&")>250 then
				table.insert(SayTab,Str.."&&")
				table.insert(SayTab,"BigFootBankDataend&&")
			else
				Str =Str.."BigFootBankDataend&&";
				table.insert(SayTab,Str)
			end
		end
	end

	for k,v in pairs (SayTab) do
		if string.find(v,BF_NIL) then
			-- print("send nil")
			completely = false
		end
	end
	if completely then
		for k,v in pairs (SayTab) do
			-- SendAddonMessage("BigFootBankData",v,'WHISPER',target)
			if sender then
				C_ChatInfo.SendAddonMessage("BigFootBankData",v,'WHISPER',sender)
				-- print("send",v)
			else
				if IsInGroup() then
					C_ChatInfo.SendAddonMessage("BigFootBankData",v,"RAID");
				end
				if IsInGuild() then
					C_ChatInfo.SendAddonMessage("BigFootBankData",v,"GUILD");
				end
				-- print("send",v)
			end
		end
	end
end

local function BigFootBank_GetData()
	BankSaveData[realmName].bankData.numItems = C_BlackMarket.GetNumItems();
	if BankSaveData[realmName].bankData.numItems and BankSaveData[realmName].bankData.numItems >0 then
		local name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID
		name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID = C_BlackMarket.GetHotItem();
		BankSaveData[realmName].bankData.HotItem={name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID};
		BankSaveData[realmName].bankData.Items={}
		local hour, minute = GetGameTime();

		local date = C_Calendar.GetDate();
		local month, day, year = date.month, date.monthDay, date.year
		BankSaveData[realmName].bankData.time= year.."-"..month.."-"..day.."-"..hour.."-"..minute
		for index =1,BankSaveData[realmName].bankData.numItems do
			name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID = C_BlackMarket.GetItemInfoByIndex(index);
			if not string.find(link,"|")then
				link = BF_NIL
				-- print(BF_NIL)
			end
			table.insert(BankSaveData[realmName].bankData.Items,{name or false, texture or false, quantity or false, itemType or false, usable or false, level or false, levelType or false, sellerName or false, minBid or false, minIncrement or false, currBid or false, youHaveHighBid or false, numBids or false, timeLeft or false, link or false, marketID or false})
		end
		BigFootBank_SendData()
	end
end

------------返回1 自己的时间比对方的新。返回0 对方比自己新。返回-1 比较失败------------------------
local function BigFootBank_IsTimeNew(selfTime,OtherTime)
	-- local hour, minute = GetGameTime();
	-- local weekday, month, day, year = CalendarGetDate();
	-- BankSaveData[realmName].bankData.time= year.."-"..month.."-"..day.."-"..hour.."-"..minute
	if not selfTime then
		return 0;
	end
	if not OtherTime then
		return 1;
	end
	local myear,mmonth,mday,mhour,mminute = 0,0,0,0,0;
	selfTime =selfTime.."-";
	local i =0;
	for s in string.gmatch(selfTime, "(.-)%-") do
		i =i+1;
		if i==1 then
			myear = tonumber(s) or 0;
		elseif i==2 then
			mmonth = tonumber(s) or 0;
		elseif i==3 then
			mday = tonumber(s) or 0;
		elseif i==4 then
			mhour =	tonumber(s) or 0;
		elseif i==5 then
			mminute = tonumber(s) or 0;
		end
	end

	i=0;
	local yyear,ymonth,yday,yhour,yminute = 0,0,0,0,0;
	OtherTime = OtherTime.."-";
	for s in string.gmatch(OtherTime, "(.-)%-") do
		i =i+1;
		if i==1 then
			yyear =tonumber(s) or 0;
		elseif i==2 then
			ymonth =tonumber(s) or 0;
		elseif i==3 then
			yday =tonumber(s) or 0;
		elseif i==4 then
			yhour =tonumber(s) or 0;
		elseif i==5 then
			yminute =tonumber(s) or 0;
		end
	end

	if yyear and ymonth and yday and yhour and yminute  and myear and mmonth and mday and mhour and mminute then
		if myear> yyear then
			return 1;
		elseif myear < yyear then
			return 0;
		end

		if mmonth> ymonth then
			return 1;
		elseif mmonth < ymonth then
			return 0;
		end

		if mday> yday then
			return 1;
		elseif mday < yday then
			return 0;
		end

		if mhour> yhour then
			return 1;
		elseif mhour < yhour then
			return 0;
		end

		if mminute> yminute then
			return 1;
		elseif mminute < yminute then
			return 0;
		end
	end
	return -1;
end

local function BigFootBank_CheckDataTime(itemTime,sender)
	local selfTime=BankSaveData[realmName].bankData.time;
	-- print(selfTime,itemTime,sender,BigFootBank_IsTimeNew(selfTime,itemTime))
	local checkdata = BigFootBank_IsTimeNew(selfTime,itemTime);
	if checkdata==1 then
		-- print("回调 send")
		BigFootBank_SendData(sender) 					--自己的数据比对方新 用自己的更新对方的数据
		reseverdata={};
	elseif checkdata==0 then
		BankSaveData[realmName].bankData ={}  	-- 对方 比自己新 用对方的数据更新自己的数据。
		BankSaveData[realmName].bankData =reseverdata;
	--	BigFootBankCheck_SelfData()
		reseverdata={};
		local m_time =time()
		if  m_time -laseShoeTime >=60*30 then
			if not BSay then
				BigFootBank_SayEvent();
			end
			laseShoeTime = m_time;
		end
	else
		reseverdata={}; ---比较失败  放弃接受的数据。
	end
	collectgarbage("collect");
end

local function BigFootBank_CheckResiveData(reseverStr,sender)
	if InCombatLockdown() then return end
	local itemServer=""
	local itemnumber;
	local itemTime="";
	local checkStr="";
	local itemnumber1 =0;
	local onedata;
	if reseverStr and reseverStr~="" then
		reseverStr = reseverStr.."#"
		for s in string.gmatch(reseverStr, "(.-)%#") do
			itemnumber1 =itemnumber1+1;
			if itemnumber1==1 then
				itemTime =s;
			elseif itemnumber1==2 then
				itemServer =s;
			elseif itemnumber1==3 then
				itemnumber =tonumber(s);
			elseif itemnumber1==4 then
				checkStr =s;
			end
		end
		if itemnumber then
			reseverdata.time =itemTime;
			reseverdata.numItems =itemnumber;
			itemnumber1 =0
			reseverdata.Items={}
			for s in string.gmatch(checkStr, "(.-);") do
				itemnumber1 =itemnumber1 +1;
				onedata={};
				for w in string.gmatch(s, "(.-),") do
					if tonumber(w) then
						table.insert(onedata,tonumber(w));
					elseif w=="true" then
						table.insert(onedata,true);
					elseif w=="false" then
						table.insert(onedata,false);
					else
						table.insert(onedata,w);
					end
				end
				table.insert(reseverdata.Items,onedata);
			end
			local Bok =true
			if itemServer ~=GetRealmName() then
				Bok =false
			end
			if itemnumber1 ~=itemnumber then
				-- print(itemnumber1,itemnumber)
				Bok =false
			end
			for k,v in pairs(reseverdata.Items) do
				if #v ~=16 then --------一件物品有16个信息
					Bok =false;
				end
			end
			if Bok then
				BigFootBank_CheckDataTime(itemTime,sender)
			end
		end
	end
end

local function table2json(t)  
	local function serialize(tbl)  
		local tmp = {}  
		for k, v in pairs(tbl) do  
			local k_type = type(k)  
			local v_type = type(v)  
			local key = (k_type == "string" and "\"" .. k .. "\":")  
				or (k_type == "number" and "")  
			local value = (v_type == "table" and serialize(v))  
				or (v_type == "boolean" and tostring(v))  
				or (v_type == "string" and "\"" .. v .. "\"")  
				or (v_type == "number" and v)  
			tmp[#tmp + 1] = key and value and tostring(key) .. tostring(value) or nil  
		end  
		if table.maxn(tbl) == 0 then  
			return "{" .. table.concat(tmp, ",") .. "}"  
		else  
			return "[" .. table.concat(tmp, ",") .. "]"  
		end  
	end  
	assert(type(t) == "table")  
	return serialize(t)  
end

local function BigFootBank_OnEvent(self, event, ...)
	if event == "ADDON_LOADED" and select(1,...) == "EuiScript" then
		realmName = GetRealmName()
		BankSaveData = BankSaveData or {}
		if not BankSaveData[realmName] then
			BankSaveData[realmName] = {}
			BankSaveData[realmName].bankData ={};
		end

		C_ChatInfo.RegisterAddonMessagePrefix("BigFootBankData");

		self:UnregisterEvent("ADDON_LOADED");
	elseif ( event == "BLACK_MARKET_BID_RESULT" or event == "BLACK_MARKET_OUTBID" or event == "BLACK_MARKET_ITEM_UPDATE" ) then
		C_Timer.After(1, function() BigFootBank_GetData(); end);
	elseif ( event == "CHAT_MSG_ADDON" ) then
		local prefix,message,channel,sender = ...;
		if prefix ~="BigFootBankData" then return end
		-- print(channel,sender)
		if (not AllReseverData[sender]) or AllReseverData[sender].BresiveData then
			local ben =false
			if string.find(message,"BigFootBankData:") then
				-- print("begin")
				AllReseverData[sender] ={};
				AllReseverData[sender].BresiveData =true
				AllReseverData[sender].channel= channel;
				AllReseverData[sender].reseverStr="";
				AllReseverData[sender].reseverStr=string.sub(message,17,-1);
				ben =true;
				-- print("CHAT_MSG_ADDON",string.sub(message,17,-1))
			end

			if AllReseverData[sender] and AllReseverData[sender].channel == channel and string.find(message,"BigFootBankDataend") then
				AllReseverData[sender].BresiveData =false;
				AllReseverData[sender].reseverStr =AllReseverData[sender].reseverStr..string.sub(message,0,-3);
				BigFootBank_CheckResiveData(AllReseverData[sender].reseverStr,sender)
				AllReseverData[sender] =nil;
			end
			if not ben and string.find(message,"&&") then
				if AllReseverData[sender] and AllReseverData[sender].BresiveData and AllReseverData[sender].channel == channel then
					AllReseverData[sender].reseverStr =AllReseverData[sender].reseverStr..string.sub(message,0,-3);
				end
			end
		end
	elseif (event == "PLAYER_CAMPING" or event == "PLAYER_QUITING") then
		BankSaveDataJSON = table2json(BankSaveData);
	end
end

local BigFootBank = CreateFrame("Frame")
BigFootBank:RegisterEvent("BLACK_MARKET_ITEM_UPDATE");
BigFootBank:RegisterEvent("BLACK_MARKET_BID_RESULT");
BigFootBank:RegisterEvent("BLACK_MARKET_OUTBID");
BigFootBank:RegisterEvent("CHAT_MSG_ADDON");
BigFootBank:RegisterEvent("PLAYER_CAMPING");
BigFootBank:RegisterEvent("PLAYER_QUITING");
BigFootBank:RegisterEvent("ADDON_LOADED")
BigFootBank:SetScript("OnEvent", BigFootBank_OnEvent)