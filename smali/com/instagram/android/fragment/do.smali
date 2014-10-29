.class final Lcom/instagram/android/fragment/do;
.super Landroid/os/Handler;
.source "RecommendedUserFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dn;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dn;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/instagram/android/fragment/do;->a:Lcom/instagram/android/fragment/dn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/instagram/android/fragment/do;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->a(Lcom/instagram/android/fragment/dn;)Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    .line 66
    return-void
.end method
