select 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '6e18206b-4c8d-4691-8870-ac0257229dfc')) as [contact], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'f7ebd87b-2aa6-47d2-845b-8a6852a80d3d')) as [email], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'dce67723-654b-4246-a2b0-cb4948797f54')) as [title], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '9fa4201f-4121-44cf-9db1-cd3c4200fb00')) as [description], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '1ab67ad2-44ff-4456-85b1-3ee8e4966488')) as [location_type], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'a4feafd0-4dc1-43b2-9466-d0ad823ba406')) as [campus], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'b7b58bc9-23d3-4b1f-a1b4-53f7a5c734e6')) as [building], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '2182e7f0-d90d-4acd-b081-389e7db49464')) as [room], 
	(select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'dd49b13d-0f1d-4f2f-aadb-d303921d5bce')) as [publicity], 
	format(f_7862.[date], 'h:mm tt') as [start], 
	format(try_convert(date, f_7862.[date]), 'yyyy') as [year], 
	format(try_convert(date, f_7862.[date]), 'dddd') as [weekday], 
	format(try_convert(date, f_7862.[date]), 'MMMM') as [month], 
	format(try_convert(date, f_7862.[date]), 'dd') as [day], 
	format(f_7862.[dtend], 'h:mm tt') as [end], 
	isnull(f_7862.[location], fp_7862.[location]) as [location_name], 
	isnull(f_7862.[city], fp_7862.[city]) as [city], 
	isnull(f_7862.[region], fp_7862.[region]) as [state], 
	convert(varchar(max), (select [value] from [config] where ([key] = 'https')) + '/register/form?cmd=ical&f=' + dbo.toGuidString(f_7862.[id])+'&target=blank') as [ical], 
	coalesce(f_7862.[online_url], fp_7862.[online_url]) as [join_link], 
	coalesce(f_7862.[limit], fp_7862.[limit]) as [capacity], 
	(select [value] from [config] where ([key] = 'https')) + '/register/' + (coalesce(f_7862.[alias], ('?id=' + dbo.toGuidString(f_7862.[id])))) as [url], 
	(f_7862.[weather].value('(p[k = "weather"]/v)[1]', 'varchar(max)')) as [weather], 
	(f_7862.[weather].value('(p[k = "probability-of-precipitation"]/v)[1]', 'varchar(max)')) as [rain], 
	(f_7862.[weather].value('(p[k = "wordedForecast"]/v)[1]', 'varchar(max)')) as [forecast], 
	(f_7862.[weather].value('(p[k = "temperature"]/v)[1]', 'varchar(max)')) as [temp], 
	(select 
			(select 'people' as [k], dbo.concatenate(', ', (select coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '638de236-6242-4e28-a20a-57d84343de6d') and (__frf.[part] is null) for xml path('t'), type)) as [v] for xml path('p'), type)
		 for xml path('row'), type) as [audiences], 
	(select 
			(select 'subjects' as [k], dbo.concatenate(', ', (select coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'e8661683-7fc5-4910-9688-625c70f00b8f') and (__frf.[part] is null) for xml path('t'), type)) as [v] for xml path('p'), type)
		 for xml path('row'), type) as [topics], 
	(select 
			(select 'materials' as [k], dbo.concatenate(', ', (select coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '1a436246-e40b-42ac-b58b-2163c7f68b3b') and (__frf.[part] is null) for xml path('t'), type)) as [v] for xml path('p'), type)
		 for xml path('row'), type) as [perks]
from [form.response] fr__JID_
left outer join [form] f_7862 on (f_7862.[id] = (select 
			f_def4.[id]
		from [form] f_def4
		left outer join [form] fp_def4 on (fp_def4.[id] = f_def4.[parent])
		where
		(
			/* guid */
			exists(select 
					*
				where
				(
					f_def4.[id] = (select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = 'd307758e-e3d5-43c5-9278-f5b034076c65'))
				)
				)
			or
			/* url */
			exists(select 
					*
				where
				(
					(select [value] from [config] where ([key] = 'https')) + '/register/' + (coalesce(f_def4.[alias], ('?id=' + dbo.toGuidString(f_def4.[id])))) = (select top 1 coalesce(__ffp.[value], __p.[value], __frf.[value]) from [form.response.field] __frf left outer join [form.field.prompt] __ffp on (__ffp.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6') and (__ffp.[field] = __frf.[field]) and (__ffp.[id] = __frf.[index]) left outer join [lookup.prompt] __p on (__p.[id] = try_convert(uniqueidentifier, __frf.[index])) where (__frf.[response] = fr__JID_.[id]) and (__frf.[field] = '9cc705b6-f8be-4790-b637-38d4df1b58f9'))
				)
				)
		)
		order by (select null)
		offset 0 rows fetch next 1 rows only))
left outer join [form] fp_7862 on (fp_7862.[id] = f_7862.[parent])
where
(
	(fr__JID_.[form] = '14476f92-7e2b-4080-b16c-955a7dd641f6')
)
order by f_7862.[date]
