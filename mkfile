GETDEPTHS_TARGETS = `{./targets}

getdepths:EV:	$GETDEPTHS_TARGETS

results/getdepths/%.depths.tsv:D:	data/%.bam
	mkdir -p `dirname $target`
	samtools depth -a $prereq \
	> $target
	