.class final Lcom/instagram/android/creation/a/am;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/ah;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/a/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/android/creation/a/am;->a:Lcom/instagram/android/creation/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/a/ah;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/am;-><init>(Lcom/instagram/android/creation/a/ah;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    const-string v0, "MetadataFragment.IS_DS_SHARE_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/instagram/android/creation/a/am;->a:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v1, v0}, Lcom/instagram/android/creation/a/ah;->c(Z)V

    .line 98
    return-void
.end method
