namespace LybLog;

using System;
using System.Collections;

extension LybLog
{
	private mixin FlushAndDeleteContainerAndItems(List<String> pContainer)
	{
		Flush();
		DeleteContainerAndItems!(pContainer);
	}
}