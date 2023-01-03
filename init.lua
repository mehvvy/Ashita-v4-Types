--[[
Type definitions for Ashita v4 globals.


Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
]]

---@class Entity
---@field TargetIndex integer
---@field ServerId integer
---@field Name string
---@field WarpPointer unknown
---@field EventPointer unknown
---@field StatusServer integer
---@field Status integer
---@field StatusEvent integer
---@field ModelSize number
---@field Unknown0022 number
local Entity = {}

---@class addon
---@field name string
---@field author string
---@field version string
---@field desc string
---@field link string
local addon = {}

---@type addon
_G.addon = nil

---@class ITarget
local ITarget = {}

---@param TargetIndex integer
---@return integer
function ITarget:GetTargetIndex(TargetIndex) end

---@class IMemoryManager
local IMemoryManager = {}

---@return ITarget
function IMemoryManager:GetTarget() end

---@class IAshitaCore
local IAshitaCore = {}

---@return IMemoryManager
function IAshitaCore:GetMemoryManager() end

---@type IAshitaCore
_G.AshitaCore = nil

---@class ashita_events
---@field register fun(event: string, event_id: string, callback: any)
local ashita_events = {}

---@class ashita
---@field events ashita_events
local ashita = {}

---@type ashita
_G.ashita = ashita

---@type fun(EntityIndex: integer): Entity
_G.GetEntity = nil

---@type fun(): Entity
_G.GetPlayerEntity = nil
