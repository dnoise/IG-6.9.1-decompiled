.class final enum Lcom/instagram/android/activity/t;
.super Ljava/lang/Enum;
.source "MainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/activity/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/android/activity/t;

.field public static final enum b:Lcom/instagram/android/activity/t;

.field public static final enum c:Lcom/instagram/android/activity/t;

.field public static final enum d:Lcom/instagram/android/activity/t;

.field public static final enum e:Lcom/instagram/android/activity/t;

.field public static final enum f:Lcom/instagram/android/activity/t;

.field private static final synthetic j:[Lcom/instagram/android/activity/t;


# instance fields
.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 121
    new-instance v0, Lcom/instagram/android/activity/t;

    const-string v1, "FEED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "main_home"

    sget v5, Lcom/facebook/au;->dock_home:I

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/t;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;

    .line 122
    new-instance v0, Lcom/instagram/android/activity/t;

    const-string v1, "NEWS"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "main_inbox"

    sget v5, Lcom/facebook/au;->dock_news:I

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/t;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    .line 123
    new-instance v0, Lcom/instagram/android/activity/t;

    const-string v1, "SHARE"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-string v4, "main_camera"

    sget v5, Lcom/facebook/au;->dock_camera:I

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/t;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;

    .line 124
    new-instance v0, Lcom/instagram/android/activity/t;

    const-string v1, "POPULAR"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "main_explore"

    sget v5, Lcom/facebook/au;->dock_explore:I

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/t;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/t;->d:Lcom/instagram/android/activity/t;

    .line 125
    new-instance v0, Lcom/instagram/android/activity/t;

    const-string v1, "SEARCH"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const-string v4, "main_search"

    sget v5, Lcom/facebook/au;->dock_search:I

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/t;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/t;->e:Lcom/instagram/android/activity/t;

    .line 126
    new-instance v0, Lcom/instagram/android/activity/t;

    const-string v1, "PROFILE"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string v4, "main_profile"

    sget v5, Lcom/facebook/au;->dock_profile:I

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/t;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/t;->f:Lcom/instagram/android/activity/t;

    .line 120
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/instagram/android/activity/t;

    const/4 v1, 0x0

    sget-object v2, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/instagram/android/activity/t;->d:Lcom/instagram/android/activity/t;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/instagram/android/activity/t;->e:Lcom/instagram/android/activity/t;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/android/activity/t;->f:Lcom/instagram/android/activity/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/activity/t;->j:[Lcom/instagram/android/activity/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/instagram/android/activity/t;->g:I

    .line 135
    iput-object p4, p0, Lcom/instagram/android/activity/t;->h:Ljava/lang/String;

    .line 136
    iput p5, p0, Lcom/instagram/android/activity/t;->i:I

    .line 137
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/activity/t;
    .locals 1
    .parameter "name"

    .prologue
    .line 120
    const-class v0, Lcom/instagram/android/activity/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/t;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/activity/t;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/instagram/android/activity/t;->j:[Lcom/instagram/android/activity/t;

    invoke-virtual {v0}, [Lcom/instagram/android/activity/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/activity/t;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/instagram/android/activity/t;->g:I

    return v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/android/activity/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/instagram/android/activity/t;->i:I

    return v0
.end method
