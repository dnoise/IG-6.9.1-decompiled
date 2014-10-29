.class final Lcom/instagram/android/fragment/bm;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bi;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/instagram/android/fragment/bm;->a:Lcom/instagram/android/fragment/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/fragment/bm;->a:Lcom/instagram/android/fragment/bi;

    invoke-static {v0}, Lcom/instagram/android/fragment/bi;->a(Lcom/instagram/android/fragment/bi;)V

    .line 115
    return-void
.end method
