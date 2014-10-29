.class public final Lcom/instagram/g/c;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "feedback_title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feedback_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "feedback_appeal_label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "feedback_ignore_label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "feedback_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/g/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/instagram/common/d/h;
    .locals 4
    .parameter

    .prologue
    .line 70
    instance-of v0, p0, Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 73
    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/instagram/common/d/j;

    invoke-direct {v1, p0}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v1

    const-string v2, "FeedbackUtil.BROADCAST_INTENT_FEEDBACK_REQUIRED"

    new-instance v3, Lcom/instagram/g/d;

    invoke-direct {v3, v0}, Lcom/instagram/g/d;-><init>(Landroid/support/v4/app/s;)V

    invoke-interface {v1, v2, v3}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "FeedbackUtil.BROADCAST_INTENT_FEEDBACK_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 94
    return-void
.end method

.method public static a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    const-string v0, "feedback_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-eqz p0, :cond_0

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instagram/g/e;

    invoke-direct {v1, p1, p0}, Lcom/instagram/g/e;-><init>(Landroid/os/Bundle;Landroid/support/v4/app/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/s;Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, Lcom/instagram/g/c;->d(Lcom/instagram/api/j/j;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public static a(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/instagram/g/c;->c(Lcom/instagram/api/j/j;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static a(Lcom/instagram/api/k/a/d;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    const-string v0, "feedback_required"

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "feedback_title"

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "feedback_message"

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "feedback_appeal_label"

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "feedback_ignore_label"

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "feedback_url"

    invoke-virtual {p0}, Lcom/instagram/api/k/a/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/os/Bundle;)V

    .line 52
    :cond_1
    return-void
.end method

.method public static b(Lcom/instagram/api/j/j;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    const-string v2, "feedback_required"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "feedback_required"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    const-string v2, "feedback_required"

    invoke-virtual {p0, v2}, Lcom/instagram/api/j/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Lcom/instagram/g/c;->d(Lcom/instagram/api/j/j;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method private static d(Lcom/instagram/api/j/j;)Landroid/os/Bundle;
    .locals 6
    .parameter

    .prologue
    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    sget-object v2, Lcom/instagram/g/c;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 103
    invoke-virtual {p0, v4}, Lcom/instagram/api/j/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v1
.end method
