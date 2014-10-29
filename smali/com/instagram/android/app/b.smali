.class final Lcom/instagram/android/app/b;
.super Landroid/content/BroadcastReceiver;
.source "InstagramApplicationForMainProcess.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

.field private b:Lcom/instagram/bugreport/rageshake/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Lcom/instagram/bugreport/rageshake/a;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/instagram/android/app/b;->b:Lcom/instagram/bugreport/rageshake/a;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/instagram/bugreport/rageshake/a;

    iget-object v1, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$100(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/bugreport/rageshake/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/app/b;->b:Lcom/instagram/bugreport/rageshake/a;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/app/b;->b:Lcom/instagram/bugreport/rageshake/a;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 146
    const-string v0, "userid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-static {v0}, Lcom/instagram/e/a;->b(Ljava/lang/String;)V

    .line 150
    const-string v0, "loggedin"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/app/b;->a()Lcom/instagram/bugreport/rageshake/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/p/a/b;->a(Lcom/instagram/common/p/a/a;)V

    .line 155
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    const-string v1, "autocomplete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$100(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$100(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    iget-object v0, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$100(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instagram/android/service/AutoCompleteHashtagService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mAutoCompleteUpdateReceiver:Lcom/instagram/user/userservice/a/e;
    invoke-static {v2}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$200(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Lcom/instagram/user/userservice/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 167
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mSuggestionsUpdateReceiver:Lcom/instagram/user/userservice/b/g;
    invoke-static {v1}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$300(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Lcom/instagram/user/userservice/b/g;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 180
    :goto_0
    return-void

    .line 171
    :cond_2
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/instagram/android/app/b;->a()Lcom/instagram/bugreport/rageshake/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/bugreport/rageshake/a;->c()V

    .line 173
    invoke-static {}, Lcom/instagram/common/p/a/b;->a()Lcom/instagram/common/p/a/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/app/b;->a()Lcom/instagram/bugreport/rageshake/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/p/a/b;->b(Lcom/instagram/common/p/a/a;)V

    .line 176
    :cond_3
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/d;

    iget-object v2, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mAutoCompleteUpdateReceiver:Lcom/instagram/user/userservice/a/e;
    invoke-static {v2}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$200(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Lcom/instagram/user/userservice/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 178
    invoke-static {p1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/app/b;->a:Lcom/instagram/android/app/InstagramApplicationForMainProcess;

    #getter for: Lcom/instagram/android/app/InstagramApplicationForMainProcess;->mSuggestionsUpdateReceiver:Lcom/instagram/user/userservice/b/g;
    invoke-static {v1}, Lcom/instagram/android/app/InstagramApplicationForMainProcess;->access$300(Lcom/instagram/android/app/InstagramApplicationForMainProcess;)Lcom/instagram/user/userservice/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
