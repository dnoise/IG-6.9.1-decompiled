.class final Lcom/instagram/android/fragment/bl;
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
    .line 116
    iput-object p1, p0, Lcom/instagram/android/fragment/bl;->a:Lcom/instagram/android/fragment/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/instagram/android/fragment/bl;->a:Lcom/instagram/android/fragment/bi;

    invoke-static {v0}, Lcom/instagram/android/fragment/bi;->c(Lcom/instagram/android/fragment/bi;)V

    .line 120
    return-void
.end method
