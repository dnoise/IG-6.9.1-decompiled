.class final Lcom/instagram/android/directshare/c/e;
.super Landroid/database/DataSetObserver;
.source "InboxFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/instagram/android/directshare/c/e;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/instagram/android/directshare/c/e;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->j(Lcom/instagram/android/directshare/c/c;)V

    .line 218
    return-void
.end method
