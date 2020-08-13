for f in ~/KLV_samples/*
do
    if test -f "$f"; then
        echo "Processing" "$f"
        java -jar target/cli-1.10.0-SNAPSHOT-jar-with-dependencies.jar "$f" > "$(basename "$f").klv.txt"
    fi
done

