.class public Lcom/instagram/android/service/AutoCompleteHashtagService;
.super Landroid/app/IntentService;
.source "AutoCompleteHashtagService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/instagram/android/service/AutoCompleteHashtagService;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-static {}, Lcom/instagram/h/a/a;->b()V

    .line 19
    return-void
.end method
