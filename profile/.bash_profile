 # The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/richardtian/dev/tools/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/richardtian/dev/tools/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/richardtian/dev/tools/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/richardtian/dev/tools/google-cloud-sdk/completion.bash.inc'
fi
PS1='\w$ '
export PATH="/Users/richardtian/dev/tools/appengine-java-sdk-1.9.46/bin/:$PATH"
export PATH="~/snapchat/appengine/snapads:$PATH"
export PATH="/Applications/SublimeText.app/Contents/SharedSupport/bin/:$PATH"
export PATH="/usr/local/bin:$PATH"
export CLICOLOR=1

export AWS_PROFILE=default

export ANDROID_SDK=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK
export ANDROID_NDK_REPOSITORY=/usr/local/share/android-ndk

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
setjdk() {
	export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7

source /usr/local/bin/virtualenvwrapper.sh

export GOPATH=/Users/richardtian/go

export PATH=/Users/richardtian/Library/Python/2.7/bin:$PATH
export PATH=/Users/richardtian/Library/Python/3.6/bin:$PATH
export PATH=$PATH:/Users/richardtian/go/bin

export PYTHONPATH=/Users/richardtian/tensorflow-models:/Users/richardtian/tensorflow-models/slim:/Users/richardtian/tensorflow-models/slim/research:/Users/richardtian/models/research:/Users/richardtian/models/research/slim

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias gce_ssh_config_update="gcloud compute config-ssh --ssh-config-file ~/.ssh/config --remove && gcloud compute config-ssh --project snapchat-chat --ssh-config-file /tmp/gce_ssh_config_dummy_file --dry-run | grep -v \"# End of Google Compute Engine Section\" | python -c \"import sys; print '\n'.join([line.rstrip() if 'Host ' not in line else line.split('.')[0] for line in sys.stdin]);\" >> ~/.ssh/config && gcloud compute config-ssh --project devsnapchat --ssh-config-file /tmp/gce_ssh_config_dummy_file --dry-run | grep -v \"#\" | python -c \"import sys; print '\n'.join([line.rstrip() if 'Host ' not in line else line.split('.')[0] for line in sys.stdin]);\" >> ~/.ssh/config && echo \"# End of Google Compute Engine Section\" >> ~/.ssh/config"

export PATH=$HOME/bin:$PATH

setkube() {
	if [ $1 = "aws-pns" ]; then
		echo Use EKS PNS!
		export KUBECONFIG=$HOME/.kube/aws_pns_main1_us-east-1_staging
	elif [ $1 = "aws-pndr" ]; then
        echo Use EKS PNDR!
        export KUBECONFIG=$HOME/.kube/aws_pndr_main_us-east-1_staging
    elif [ $1 = "aws-pns-prod" ]; then
        echo Use EKS PNS PROD!
        export KUBECONFIG=$HOME/.kube/aws_pns_main1_us-east-1_prod
    elif [ $1 = "aws-pndr-prod" ]; then
        echo Use EKS PNDR PROD!
        export KUBECONFIG=$HOME/.kube/aws_pndr_main_us-east-1_prod
    elif [ $1 = "aws-mcs" ]; then
    	echo Use EKS MCS STAGING!
    	export KUBECONFIG=$HOME/.kube/eks_snap-core-staging-mcs_us-east-1_mcsstaging_aws-mcs-staging_us-east-1_staging
    elif [ $1 = "aws-mcs-prod" ]; then
    	echo Use EKS MCS PROD!
    	export KUBECONFIG=$HOME/.kube/eks_snap-core-prod-mcs
	else
		echo Use GKE!
		export KUBECONFIG=$HOME/.kube/config
	fi
}

alias gce_ssh_config_update="gcloud compute config-ssh --ssh-config-file ~/.ssh/config --remove && gcloud compute config-ssh --project snapchat-chat --ssh-config-file /tmp/gce_ssh_config_dummy_file --dry-run | grep -v \"# End of Google Compute Engine Section\" | python -c \"import sys; print '\n'.join([line.rstrip() if 'Host ' not in line else line.split('.')[0] for line in sys.stdin]);\" >> ~/.ssh/config && gcloud compute config-ssh --project devsnapchat --ssh-config-file /tmp/gce_ssh_config_dummy_file --dry-run | grep -v \"#\" | python -c \"import sys; print '\n'.join([line.rstrip() if 'Host ' not in line else line.split('.')[0] for line in sys.stdin]);\" >> ~/.ssh/config && echo \"# End of Google Compute Engine Section\" >> ~/.ssh/config"
