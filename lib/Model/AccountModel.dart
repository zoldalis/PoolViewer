import 'dart:convert';
/// currentHashrate : 0
/// currentLuck : "string"
/// hashrate : 0
/// pageSize : 0
/// payments : [{"amount":0,"timestamp":0,"tx":"string"}]
/// paymentsTotal : 0
/// rewards : [{"blockheight":0,"timestamp":0,"blockhash":"string","reward":0,"percent":0,"immature":false,"currentLuck":0,"uncle":false}]
/// roundShares : 0
/// shares : ["string"]
/// stats : {"balance":0,"blocksFound":0,"immature":0,"lastShare":0,"paid":0,"pending":false}
/// sumrewards : [{"inverval":0,"reward":0,"numreward":0,"name":"string","offset":0}]
/// workers : {"workerGroup":{"lastBeat":"string","hr":0,"offline":false,"hr2":0}}
/// workersOffline : 0
/// workersOnline : 0
/// workersTotal : 0
/// 24hreward : 0
/// 24hnumreward : 0

AccountModel accountModelFromJson(String str) => AccountModel.fromJson(json.decode(str));
String accountModelToJson(AccountModel data) => json.encode(data.toJson());
class AccountModel {
  AccountModel({
      int? currentHashrate, 
      String? currentLuck, 
      int? hashrate, 
      int? pageSize, 
      List<Payments>? payments, 
      int? paymentsTotal, 
      List<Rewards>? rewards, 
      int? roundShares, 
      List<String>? shares, 
      Stats? stats, 
      List<Sumrewards>? sumrewards, 
      Workers? workers, 
      int? workersOffline, 
      int? workersOnline, 
      int? workersTotal, 
      int? hreward, 
      int? hnumreward,}){
    _currentHashrate = currentHashrate;
    _currentLuck = currentLuck;
    _hashrate = hashrate;
    _pageSize = pageSize;
    _payments = payments;
    _paymentsTotal = paymentsTotal;
    _rewards = rewards;
    _roundShares = roundShares;
    _shares = shares;
    _stats = stats;
    _sumrewards = sumrewards;
    _workers = workers;
    _workersOffline = workersOffline;
    _workersOnline = workersOnline;
    _workersTotal = workersTotal;
    _hreward = hreward;
    _hnumreward = hnumreward;
}

  AccountModel.fromJson(dynamic json) {
    _currentHashrate = json['currentHashrate'];
    _currentLuck = json['currentLuck'];
    _hashrate = json['hashrate'];
    _pageSize = json['pageSize'];
    if (json['payments'] != null) {
      _payments = [];
      json['payments'].forEach((v) {
        _payments?.add(Payments.fromJson(v));
      });
    }
    _paymentsTotal = json['paymentsTotal'];
    if (json['rewards'] != null) {
      _rewards = [];
      json['rewards'].forEach((v) {
        _rewards?.add(Rewards.fromJson(v));
      });
    }
    _roundShares = json['roundShares'];
    _shares = json['shares'] != null ? json['shares'].cast<String>() : [];
    _stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
    if (json['sumrewards'] != null) {
      _sumrewards = [];
      json['sumrewards'].forEach((v) {
        _sumrewards?.add(Sumrewards.fromJson(v));
      });
    }
    _workers = json['workers'] != null ? Workers.fromJson(json['workers']) : null;
    _workersOffline = json['workersOffline'];
    _workersOnline = json['workersOnline'];
    _workersTotal = json['workersTotal'];
    _hreward = json['24hreward'];
    _hnumreward = json['24hnumreward'];
  }
  int? _currentHashrate;
  String? _currentLuck;
  int? _hashrate;
  int? _pageSize;
  List<Payments>? _payments;
  int? _paymentsTotal;
  List<Rewards>? _rewards;
  int? _roundShares;
  List<String>? _shares;
  Stats? _stats;
  List<Sumrewards>? _sumrewards;
  Workers? _workers;
  int? _workersOffline;
  int? _workersOnline;
  int? _workersTotal;
  int? _hreward;
  int? _hnumreward;

  int? get currentHashrate => _currentHashrate;
  String? get currentLuck => _currentLuck;
  int? get hashrate => _hashrate;
  int? get pageSize => _pageSize;
  List<Payments>? get payments => _payments;
  int? get paymentsTotal => _paymentsTotal;
  List<Rewards>? get rewards => _rewards;
  int? get roundShares => _roundShares;
  List<String>? get shares => _shares;
  Stats? get stats => _stats;
  List<Sumrewards>? get sumrewards => _sumrewards;
  Workers? get workers => _workers;
  int? get workersOffline => _workersOffline;
  int? get workersOnline => _workersOnline;
  int? get workersTotal => _workersTotal;
  int? get hreward => _hreward;
  int? get hnumreward => _hnumreward;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentHashrate'] = _currentHashrate;
    map['currentLuck'] = _currentLuck;
    map['hashrate'] = _hashrate;
    map['pageSize'] = _pageSize;
    if (_payments != null) {
      map['payments'] = _payments?.map((v) => v.toJson()).toList();
    }
    map['paymentsTotal'] = _paymentsTotal;
    if (_rewards != null) {
      map['rewards'] = _rewards?.map((v) => v.toJson()).toList();
    }
    map['roundShares'] = _roundShares;
    map['shares'] = _shares;
    if (_stats != null) {
      map['stats'] = _stats?.toJson();
    }
    if (_sumrewards != null) {
      map['sumrewards'] = _sumrewards?.map((v) => v.toJson()).toList();
    }
    if (_workers != null) {
      map['workers'] = _workers?.toJson();
    }
    map['workersOffline'] = _workersOffline;
    map['workersOnline'] = _workersOnline;
    map['workersTotal'] = _workersTotal;
    map['24hreward'] = _hreward;
    map['24hnumreward'] = _hnumreward;
    return map;
  }

}

/// workerGroup : {"lastBeat":"string","hr":0,"offline":false,"hr2":0}

Workers workersFromJson(String str) => Workers.fromJson(json.decode(str));
String workersToJson(Workers data) => json.encode(data.toJson());
class Workers {
  Workers({
      WorkerGroup? workerGroup,}){
    _workerGroup = workerGroup;
}

  Workers.fromJson(dynamic json) {
    _workerGroup = json['workerGroup'] != null ? WorkerGroup.fromJson(json['workerGroup']) : null;
  }
  WorkerGroup? _workerGroup;

  WorkerGroup? get workerGroup => _workerGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_workerGroup != null) {
      map['workerGroup'] = _workerGroup?.toJson();
    }
    return map;
  }

}

/// lastBeat : "string"
/// hr : 0
/// offline : false
/// hr2 : 0

WorkerGroup workerGroupFromJson(String str) => WorkerGroup.fromJson(json.decode(str));
String workerGroupToJson(WorkerGroup data) => json.encode(data.toJson());
class WorkerGroup {
  WorkerGroup({
      String? lastBeat, 
      int? hr, 
      bool? offline, 
      int? hr2,}){
    _lastBeat = lastBeat;
    _hr = hr;
    _offline = offline;
    _hr2 = hr2;
}

  WorkerGroup.fromJson(dynamic json) {
    _lastBeat = json['lastBeat'];
    _hr = json['hr'];
    _offline = json['offline'];
    _hr2 = json['hr2'];
  }
  String? _lastBeat;
  int? _hr;
  bool? _offline;
  int? _hr2;

  String? get lastBeat => _lastBeat;
  int? get hr => _hr;
  bool? get offline => _offline;
  int? get hr2 => _hr2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lastBeat'] = _lastBeat;
    map['hr'] = _hr;
    map['offline'] = _offline;
    map['hr2'] = _hr2;
    return map;
  }

}

/// inverval : 0
/// reward : 0
/// numreward : 0
/// name : "string"
/// offset : 0

Sumrewards sumrewardsFromJson(String str) => Sumrewards.fromJson(json.decode(str));
String sumrewardsToJson(Sumrewards data) => json.encode(data.toJson());
class Sumrewards {
  Sumrewards({
      int? inverval, 
      int? reward, 
      int? numreward, 
      String? name, 
      int? offset,}){
    _inverval = inverval;
    _reward = reward;
    _numreward = numreward;
    _name = name;
    _offset = offset;
}

  Sumrewards.fromJson(dynamic json) {
    _inverval = json['inverval'];
    _reward = json['reward'];
    _numreward = json['numreward'];
    _name = json['name'];
    _offset = json['offset'];
  }
  int? _inverval;
  int? _reward;
  int? _numreward;
  String? _name;
  int? _offset;

  int? get inverval => _inverval;
  int? get reward => _reward;
  int? get numreward => _numreward;
  String? get name => _name;
  int? get offset => _offset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['inverval'] = _inverval;
    map['reward'] = _reward;
    map['numreward'] = _numreward;
    map['name'] = _name;
    map['offset'] = _offset;
    return map;
  }

}

/// balance : 0
/// blocksFound : 0
/// immature : 0
/// lastShare : 0
/// paid : 0
/// pending : false

Stats statsFromJson(String str) => Stats.fromJson(json.decode(str));
String statsToJson(Stats data) => json.encode(data.toJson());
class Stats {
  Stats({
      int? balance, 
      int? blocksFound, 
      int? immature, 
      int? lastShare, 
      int? paid, 
      bool? pending,}){
    _balance = balance;
    _blocksFound = blocksFound;
    _immature = immature;
    _lastShare = lastShare;
    _paid = paid;
    _pending = pending;
}

  Stats.fromJson(dynamic json) {
    _balance = json['balance'];
    _blocksFound = json['blocksFound'];
    _immature = json['immature'];
    _lastShare = json['lastShare'];
    _paid = json['paid'];
    _pending = json['pending'] != 0;
  }
  int? _balance;
  int? _blocksFound;
  int? _immature;
  int? _lastShare;
  int? _paid;
  bool? _pending;

  int? get balance => _balance;
  int? get blocksFound => _blocksFound;
  int? get immature => _immature;
  int? get lastShare => _lastShare;
  int? get paid => _paid;
  bool? get pending => _pending;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['balance'] = _balance;
    map['blocksFound'] = _blocksFound;
    map['immature'] = _immature;
    map['lastShare'] = _lastShare;
    map['paid'] = _paid;
    map['pending'] = _pending;
    return map;
  }

}

/// blockheight : 0
/// timestamp : 0
/// blockhash : "string"
/// reward : 0
/// percent : 0
/// immature : false
/// currentLuck : 0
/// uncle : false

Rewards rewardsFromJson(String str) => Rewards.fromJson(json.decode(str));
String rewardsToJson(Rewards data) => json.encode(data.toJson());
class Rewards {
  Rewards({
      int? blockheight, 
      int? timestamp, 
      String? blockhash, 
      int? reward, 
      double? percent,
      bool? immature, 
      int? currentLuck, 
      bool? uncle,}){
    _blockheight = blockheight;
    _timestamp = timestamp;
    _blockhash = blockhash;
    _reward = reward;
    _percent = percent;
    _immature = immature;
    _currentLuck = currentLuck;
    _uncle = uncle;
}

  Rewards.fromJson(dynamic json) {
    _blockheight = json['blockheight'];
    _timestamp = json['timestamp'];
    _blockhash = json['blockhash'];
    _reward = json['reward'];
    _percent = json['percent'];
    _immature = json['immature'];
    _currentLuck = json['currentLuck'];
    _uncle = json['uncle'];
  }
  int? _blockheight;
  int? _timestamp;
  String? _blockhash;
  int? _reward;
  double? _percent;
  bool? _immature;
  int? _currentLuck;
  bool? _uncle;

  int? get blockheight => _blockheight;
  int? get timestamp => _timestamp;
  String? get blockhash => _blockhash;
  int? get reward => _reward;
  double? get percent => _percent;
  bool? get immature => _immature;
  int? get currentLuck => _currentLuck;
  bool? get uncle => _uncle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['blockheight'] = _blockheight;
    map['timestamp'] = _timestamp;
    map['blockhash'] = _blockhash;
    map['reward'] = _reward;
    map['percent'] = _percent;
    map['immature'] = _immature;
    map['currentLuck'] = _currentLuck;
    map['uncle'] = _uncle;
    return map;
  }

}

/// amount : 0
/// timestamp : 0
/// tx : "string"

Payments paymentsFromJson(String str) => Payments.fromJson(json.decode(str));
String paymentsToJson(Payments data) => json.encode(data.toJson());
class Payments {
  Payments({
      int? amount, 
      int? timestamp, 
      String? tx,}){
    _amount = amount;
    _timestamp = timestamp;
    _tx = tx;
}

  Payments.fromJson(dynamic json) {
    _amount = json['amount'];
    _timestamp = json['timestamp'];
    _tx = json['tx'];
  }
  int? _amount;
  int? _timestamp;
  String? _tx;

  int? get amount => _amount;
  int? get timestamp => _timestamp;
  String? get tx => _tx;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['timestamp'] = _timestamp;
    map['tx'] = _tx;
    return map;
  }

}